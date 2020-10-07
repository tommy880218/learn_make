learn_make.html: learn_make.Rmd data/ok_tor.rds data/school_districts.rds data/fire_stations.rds
	Rscript -e "rmarkdown::render('learn_make.Rmd')"
	# Rscript -e "rmarkdown::render('learn_make.Rmd')"
	
data/ok_tor.rds: R/get_tornadoes.R
	Rscript $<

data/school_districts.rds: R/get_school_districts.R
	Rscript $<

data/fire_stations.rds: R/get_fire_stations.R
	Rscript $<
	
clean_data:
	cd data/; rm *.rds
	
clean_html:
	rm learn_make.html
	
.PHONY: clean_data clean_html