### Which athletes scored the highest in all all-around events in 2022? (Sum of Total_points from every competition) Top 5. ###

SELECT g.Name, g.License_number, 
b.Total_Score as Bydgoszcz_Score, 
k.Total_Score as Cracow_Score, 
gd.Total_Score as Gdansk_Score, 
z.Total_Score as Zabrze_Score, 
IFNULL(b.Total_Score,0)+IFNULL(k.Total_Score,0)+IFNULL(gd.Total_Score,0)+IFNULL(z.Total_Score,0) as Year_Score

FROM all_gymnasts g

LEFT JOIN bydgoszcz_2022 b ON g.License_number=b.License_number
LEFT JOIN zabrze_2022 z ON g.License_number=z.License_number
LEFT JOIN gdansk_2022 gd ON g.License_number=gd.License_number
LEFT JOIN krakow_2022 k ON g.License_number=k.License_number

ORDER BY Year_Score DESC
LIMIT 5;

### ANSWER: Sasnal Filip, Lekhac Tomasz, Kuzdra Christian, Kwiatkowski Michał, Bober Michał ###