<patch-1.0 appVersion="1.0.12">
   <comment type="patch/comment" x="42" y="28" text="This object converts Axoloti notes to V/Oct"/>
   <comment type="patch/comment" x="42" y="56" text="Base note is C1 = 0Volts"/>
   <comment type="patch/comment" x="210" y="56" text="divide by 12"/>
   <comment type="patch/comment" x="322" y="56" text="multiply by 13"/>
   <comment type="patch/comment" x="434" y="56" text="shift down"/>
   <comment type="patch/comment" x="518" y="56" text="Convert to positive voltage"/>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="Pitch In" x="42" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_2" x="126" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_3" x="210" y="84">
      <params>
         <frac32.u.map name="amp" value="5.299999237060547"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/gain" uuid="6b4dd3da49f98e54900f6c20031f38f4624fa364" name="gain_3" x="322" y="84">
      <params>
         <frac32.u.map name="amp" value="52.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/-" uuid="3280bb759e9fc189e134300e48dda7e903c9a110" name="-_4" x="434" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/bipolar2unipolar" uuid="f6f63d71053d572d3c795f83c7ec11dfbbce82dd" name="bipolar2unipolar_2" x="518" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet f" uuid="d18a9a550bcaaebac94e25983bd0e27dbfd7233c" name="Output" x="658" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="Note C1" x="42" y="140">
      <params>
         <frac32.s.map name="value" value="-40.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial b" uuid="862e7d7f29093cb1ce4aed72244d118ad4d46692" name="Note C1___" x="350" y="182">
      <params>
         <frac32.s.map name="value" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="-_2" outlet="out"/>
         <dest obj="*c_3" inlet="in"/>
      </net>
      <net>
         <source obj="Note C1" outlet="out"/>
         <dest obj="-_2" inlet="in2"/>
      </net>
      <net>
         <source obj="*c_3" outlet="out"/>
         <dest obj="gain_3" inlet="in"/>
      </net>
      <net>
         <source obj="gain_3" outlet="out"/>
         <dest obj="-_4" inlet="in1"/>
      </net>
      <net>
         <source obj="Note C1___" outlet="out"/>
         <dest obj="-_4" inlet="in2"/>
      </net>
      <net>
         <source obj="-_4" outlet="out"/>
         <dest obj="bipolar2unipolar_2" inlet="i"/>
      </net>
      <net>
         <source obj="Pitch In" outlet="inlet"/>
         <dest obj="-_2" inlet="in1"/>
      </net>
      <net>
         <source obj="bipolar2unipolar_2" outlet="o"/>
         <dest obj="Output" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>251</x>
      <y>105</y>
      <width>1112</width>
      <height>535</height>
   </windowPos>
</patch-1.0>