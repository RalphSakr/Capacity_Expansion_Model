Set
Years "Year"
Days
Hours
Tech_Type "Type of Technology"
Tech_Type_Conv
Tech_Type_RE
Plants "Names of the different Power Plants"


PlantParametersDset

;
Alias
(Years,y)
(Days,d)
(Hours,h)
(Plants,p)
   
Parameter

PlantParameters(Plants,PlantParametersDset)
*EconParameters (Years,EconParametersDset)

IC(Plants)
EffectiveCapacity(Plants)
*UnitEfficiency(Plants)
*EmissionCoeff(Plants)
*HeatRate(Plants)
*UnitEfficiency(Plants)
*FuelCosts(Plants)
DiscountFactor(y)

;


$CALL GDXXRW Input_database_GEP.xlsx skipempty=0 trace=2 index=Index!C1
$gdxin Input_database_GEP.gdx
$load Years, Days, Hours, Tech_Type, Plants
$load PlantParametersDset, EconParametersDset
$load PlantParameters, DiscountFactor
*$loaddc 
$gdxin
;

IC(p)                         = PlantParameters(p,"InstalledCapacity"); 
EffectiveCapacity(p)          = PlantParameters(p,"EffectiveCapacity");
*df(y)                         = DicountFactor(y,"DiscountFactor");


EXECUTE_UNLOAD 'ALL_INPUT_DATA';


