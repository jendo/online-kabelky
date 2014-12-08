CREATE OR REPLACE VIEW `view_product`
	AS SELECT
			p.id,
			pc.category_id,
			p.name,
			p.webname,
			p.price,
			p.description,
			p.created,
			p.modified,
			p.deleted,
			p.new,
			p.top,
			p.active,
			p.avaible,
			f.id AS file_id,
			f.filename
	FROM product p
	INNER JOIN product_category pc ON (pc.product_id = p.id)
	INNER JOIN  product_file pf ON (p.id = pf.product_id)
	INNER JOIN file f ON (f.id = pf.file_id)
	ORDER BY p.name ASC
