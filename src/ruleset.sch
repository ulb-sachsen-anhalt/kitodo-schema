<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>        
        <sch:rule context="/Preferences/DocStrctType/metadata">            
            <sch:assert test="/Preferences/MetadataType/Name = ." role="fatal">Das Metadatum '<sch:value-of select="."/>' ist nicht definiert. (DocStrctType: <sch:value-of select="parent::node()/Name"/>)</sch:assert>
        </sch:rule>
        <sch:rule context="/Preferences/DocStrctType/group">            
            <sch:assert test="/Preferences/MetadataType/Name = ." role="fatal">Die Metadatengruppe '<sch:value-of select="."/>' ist nicht definiert. (DocStrctType: <sch:value-of select="parent::node()/Name"/>)</sch:assert>
        </sch:rule>
        <sch:rule context="/Preferences/DocStrctType/allowedchildtype">            
            <sch:assert test="/Preferences/DocStrctType/Name = ." role="fatal">Das Strukturelement '<sch:value-of select="."/>' ist nicht definiert. (DocStrctType: <sch:value-of select="parent::node()/Name"/>)</sch:assert>
        </sch:rule>
        <sch:rule context="/Preferences/Group/metadata">            
            <sch:assert test="/Preferences/MetadataType/Name = ." role="fatal">Das Metadatum '<sch:value-of select="."/>' ist nicht definiert. (Group: <sch:value-of select="parent::node()/Name"/>)</sch:assert>
        </sch:rule>
        <sch:rule context="/Preferences/Formats/PicaPlus/Metadata/Name">            
            <sch:assert test="/Preferences/MetadataType/Name = ." role="fatal">Das Metadatum '<sch:value-of select="."/>' ist nicht definiert. (PicaPlus: <sch:value-of select="parent::node()/Name"/>)</sch:assert>
        </sch:rule>
        <sch:rule context="/Preferences/Formats/PicaPlus/MetadataGroup/Name">            
            <sch:assert test="/Preferences/Group/Name = ." role="fatal">Die Metadatengruppe '<sch:value-of select="."/>' ist nicht definiert. (PicaPlus: <sch:value-of select="parent::node()/Name"/>)</sch:assert>
        </sch:rule>
        <sch:rule context="/Preferences/Formats/METS/Metadata/InternalName">            
            <sch:assert test="/Preferences/MetadataType/Name = ." role="fatal">Das Metadatum '<sch:value-of select="."/>' ist nicht definiert. (METS: <sch:value-of select="parent::node()/InternalName"/>)</sch:assert>
        </sch:rule>
        <sch:rule context="/Preferences/Formats/METS/Group/InternalName">            
            <sch:assert test="/Preferences/Group/Name = ." role="fatal">Die Metadatengruppe '<sch:value-of select="."/>' ist nicht definiert. (METS: <sch:value-of select="parent::node()/InternalName"/>)</sch:assert>            
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="/Preferences/Group/Name">            
            <sch:assert test="/Preferences/DocStrctType/group = ." role="info">Die definierte Metadatengruppe '<sch:value-of select="."/>' wird in keinem Strukturelement genutzt.</sch:assert>
        </sch:rule>
        <sch:rule context="/Preferences/MetadataType/Name">            
            <sch:assert test="(/Preferences/DocStrctType/metadata = .) or (/Preferences/Group/metadata = .)  or (/Preferences/Group/Name = .)" role="info">Das definierte Metadatum '<sch:value-of select="."/>' wird in keinem Strukturelement und keiner Gruppe genutzt.</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>