<patch-1.0 appVersion="1.0.12">
   <obj type="patch/inlet b" uuid="3b0d3eacb5bb978cb05d1372aa2714d5a4790844" name="Trigger" x="14" y="14">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="OSC Pitch" x="14" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="env/adsr" uuid="d1dbcc5fa6f87b98a6a91c87fd44acee5e690bac" name="Envelope" x="126" y="56">
      <params>
         <frac32.s.map name="a" onParent="true" value="-64.0"/>
         <frac32.s.map name="d" onParent="true" value="26.0"/>
         <frac32.u.map name="s" onParent="true" value="52.0"/>
         <frac32.s.map name="r" onParent="true" value="-24.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="FM" x="14" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="osc/sine" uuid="6e094045cca76a9dbf7ebfa72e44e4700d2b3ba" name="Oscillator" x="126" y="252">
      <params>
         <frac32.s.map name="pitch" onParent="true" value="0.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="gain/vca" uuid="a9f2dcd18043e2f47364e45cb8814f63c2a37c0d" name="vca_1" x="266" y="364">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="Audio Out" x="336" y="364">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="Oscillator" outlet="wave"/>
         <dest obj="vca_1" inlet="a"/>
      </net>
      <net>
         <source obj="Envelope" outlet="env"/>
         <dest obj="vca_1" inlet="v"/>
      </net>
      <net>
         <source obj="FM" outlet="inlet"/>
         <dest obj="Oscillator" inlet="freq"/>
      </net>
      <net>
         <source obj="Trigger" outlet="inlet"/>
         <dest obj="Envelope" inlet="gate"/>
      </net>
      <net>
         <source obj="OSC Pitch" outlet="inlet"/>
         <dest obj="Oscillator" inlet="pitch"/>
      </net>
      <net>
         <source obj="vca_1" outlet="o"/>
         <dest obj="Audio Out" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>317</x>
      <y>125</y>
      <width>972</width>
      <height>775</height>
   </windowPos>
</patch-1.0>
