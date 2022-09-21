SELECT * FROM dados_mutuarios;
SELECT * FROM emprestimos;
SELECT * FROM historicos_banco;
SELECT * FROM ids;

CREATE TABLE dados_juntos AS SELECT

dm.person_age,
dm.person_income,
dm.person_home_ownership,
dm.person_emp_length,
e.loan_intent,
e.loan_grade,
e.loan_amnt,
e.loan_int_rate,
e.loan_status,
e.loan_percent_income,
hb.cb_person_default_on_file,
hb.cb_person_cred_hist_length

FROM ids i

JOIN dados_mutuarios dm ON dm.person_id = i.person_id 

JOIN emprestimos e ON e.loan_id = i.loan_id 

JOIN historicos_banco hb ON hb.cb_id = i.cb_id;

SELECT * FROM dados_juntos;
