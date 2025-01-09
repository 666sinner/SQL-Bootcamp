COMMENT ON TABLE person_discounts IS 'структура хранения перс скидок';
COMMENT ON COLUMN person_discounts.id IS 'айди персональной скидки';
COMMENT ON COLUMN person_discounts.person_id IS 'айди человека для каждоой скидки';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'пиццерия в которой скидка';
COMMENT ON COLUMN person_discounts.discount IS 'сама скидка';