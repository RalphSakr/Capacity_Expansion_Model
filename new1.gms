Set
y "years" /1*20/
d "days" /1*365/
h "hour" /1*24/
f "fuel plants" /1*10 / 
w "wind plants" / 1*10 / 
s "solar plants" /1*10 /
pr "private generators" /1*10 / 
p "plant type" /f, w, s, pr /
pc "conventional" /f, pr /
pr "renewables" / w, s /
;

Parameter
df(y) "discount factor of year y"
mc_f(f) "minimum capacity of fuel plants"
mc_s(s) "minimum capacity of solar plants"
test1(y)
test2(y)
costs(p)
wind_cap(w)
;

Scalar
disc_f "discount factor" / 0.08 /
;
df(y) = 1/(1+disc_f)**ord(y)
;
test1(y) = 1*ord(y)
;
test2(y) = 1*card(y)
;
wind_cap(w) = 1000
;
;

Variable
new_wind(w)
new_solar(s)

;


EXECUTE_UNLOAD 'Imported data'