SELECT  ' ALTER TABLE ' + schema_name(Schema_id)+'.'+ object_name(parent_object_id)
        + '  DROP CONSTRAINT  ' +  name   
FROM    sys.foreign_keys fk 

ALTER TABLE     mhl_suppliers
ADD CONSTRAINT  FK_SupplierMembertype
FOREIGN KEY     (Membertype_ID) 
REFERENCES      mhl_membertypes(Membertype_ID);

ALTER TABLE     mhl_suppliers
ADD CONSTRAINT  FK_SupplierCompany
FOREIGN KEY     (Company_ID) 
REFERENCES      mhl_companies(Company_ID);

ALTER TABLE     mhl_suppliers
ADD CONSTRAINT  FK_SupplierPostcode
FOREIGN KEY     (Postcode_ID) 
REFERENCES      pc_lat_long(Postcode_ID);

ALTER TABLE     mhl_suppliers
ADD CONSTRAINT  FK_SupplierPpostcode
FOREIGN KEY     (P_postcode_ID) 
REFERENCES      pc_lat_long(P_postcode_ID);

ALTER TABLE     mhl_suppliers
ADD CONSTRAINT  FK_SupplierCity
FOREIGN KEY     (City_ID) 
REFERENCES      mhl_cities(City_ID);

ALTER TABLE     mhl_suppliers
ADD CONSTRAINT  FK_SupplierPCity
FOREIGN KEY     (PCity_ID) 
REFERENCES      mhl_cities(PCity_ID);

ALTER TABLE     mhl_cities
ADD CONSTRAINT  FK_CityCommunes
FOREIGN KEY     (Commune_ID) 
REFERENCES      mhl_Communes(Commune_ID);

ALTER TABLE     mhl_communes
ADD CONSTRAINT  FK_CommunesDistricts
FOREIGN KEY     (District_ID) 
REFERENCES      mhl_districts(District_ID);

ALTER TABLE     mhl_countires
ADD CONSTRAINT  FK_DistrictsCountires
FOREIGN KEY     (Country_ID) 
REFERENCES      mhl_countries(Country_ID);

ALTER TABLE     mhl_hitcount
ADD CONSTRAINT  FK_HitcountSupplier
FOREIGN KEY     (supplier_ID) 
REFERENCES      mhl_suppliers(supplier_ID);

ALTER TABLE     mhl_contacts
ADD CONSTRAINT  FK_ContactsSupplier
FOREIGN KEY     (supplier_ID) 
REFERENCES      mhl_suppliers(supplier_ID);

ALTER TABLE     mhl_contacts
ADD CONSTRAINT  FK_ContactsDepartment
FOREIGN KEY     (department_ID) 
REFERENCES      mhl_departments(department_ID);

ALTER TABLE     mhl_suppliers_mhl_rubriek_view
ADD CONSTRAINT  FK_SuppliersRubriekSuppliers
FOREIGN KEY     (supplier_ID) 
REFERENCES      mhl_suppliers(supplier_ID);

ALTER TABLE     mhl_suppliers_mhl_rubriek_view
ADD CONSTRAINT  FK_SuppliersRubriekRubriek
FOREIGN KEY     (rubriek_view_ID) 
REFERENCES      mhl_reubrieken(rubriek_view_ID);

ALTER TABLE     mhl_properties
ADD CONSTRAINT  FK_PropertiesSuppliers
FOREIGN KEY     (Supplier_ID) 
REFERENCES      mhl_suppliers(supplier_ID)

ALTER TABLE     mhl_properties
ADD CONSTRAINT  FK_PropertiesPropertytype
FOREIGN KEY     (Propertytype_ID) 
REFERENCES      mhl_propertytypes(Propertytypes_ID);

ALTER TABLE     mhl_yn_properties
ADD CONSTRAINT  FK_PropertiesYNSuppliers
FOREIGN KEY     (Supplier_ID) 
REFERENCES      mhl_suppliers(supplier_ID)

ALTER TABLE     mhl_yb_properties
ADD CONSTRAINT  FK_PropertiesYNPropertytype
FOREIGN KEY     (Propertytype_ID) 
REFERENCES      mhl_propertytypes(Propertytypes_ID);

ALTER TABLE     mhl_detaildefs
ADD CONSTRAINT  FK_DetaildefsPropertytype
FOREIGN KEY     (Propertytype_ID) 
REFERENCES      mhl_propertytypes(Propertytypes_ID);

ALTER TABLE     mhl_detaildefs
ADD CONSTRAINT  FK_DetaildefsDetailgroups
FOREIGN KEY     (Detailgroup_ID) 
REFERENCES      mhl_detailgroups(Detailgroup_ID);