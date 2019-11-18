<?xml version="1.0" encoding="UTF-8"?>
<data version="1.0">
    <struct type="Settings">
        <key>fileFormatVersion</key>
        <int>4</int>
        <key>texturePackerVersion</key>
        <string>4.10.0</string>
        <key>autoSDSettings</key>
        <array>
            <struct type="AutoSDSettings">
                <key>scale</key>
                <double>1</double>
                <key>extension</key>
                <string></string>
                <key>spriteFilter</key>
                <string></string>
                <key>acceptFractionalValues</key>
                <false/>
                <key>maxTextureSize</key>
                <QSize>
                    <key>width</key>
                    <int>-1</int>
                    <key>height</key>
                    <int>-1</int>
                </QSize>
            </struct>
        </array>
        <key>allowRotation</key>
        <false/>
        <key>shapeDebug</key>
        <false/>
        <key>dpi</key>
        <uint>72</uint>
        <key>dataFormat</key>
        <string>json-array</string>
        <key>textureFileName</key>
        <filename></filename>
        <key>flipPVR</key>
        <false/>
        <key>pvrCompressionQuality</key>
        <enum type="SettingsBase::PvrCompressionQuality">PVR_QUALITY_NORMAL</enum>
        <key>atfCompressData</key>
        <false/>
        <key>mipMapMinSize</key>
        <uint>32768</uint>
        <key>etc1CompressionQuality</key>
        <enum type="SettingsBase::Etc1CompressionQuality">ETC1_QUALITY_LOW_PERCEPTUAL</enum>
        <key>etc2CompressionQuality</key>
        <enum type="SettingsBase::Etc2CompressionQuality">ETC2_QUALITY_LOW_PERCEPTUAL</enum>
        <key>dxtCompressionMode</key>
        <enum type="SettingsBase::DxtCompressionMode">DXT_PERCEPTUAL</enum>
        <key>jxrColorFormat</key>
        <enum type="SettingsBase::JpegXrColorMode">JXR_YUV444</enum>
        <key>jxrTrimFlexBits</key>
        <uint>0</uint>
        <key>jxrCompressionLevel</key>
        <uint>0</uint>
        <key>ditherType</key>
        <enum type="SettingsBase::DitherType">NearestNeighbour</enum>
        <key>backgroundColor</key>
        <uint>0</uint>
        <key>libGdx</key>
        <struct type="LibGDX">
            <key>filtering</key>
            <struct type="LibGDXFiltering">
                <key>x</key>
                <enum type="LibGDXFiltering::Filtering">Linear</enum>
                <key>y</key>
                <enum type="LibGDXFiltering::Filtering">Linear</enum>
            </struct>
        </struct>
        <key>shapePadding</key>
        <uint>0</uint>
        <key>jpgQuality</key>
        <uint>80</uint>
        <key>pngOptimizationLevel</key>
        <uint>1</uint>
        <key>webpQualityLevel</key>
        <uint>101</uint>
        <key>textureSubPath</key>
        <string></string>
        <key>atfFormats</key>
        <string></string>
        <key>textureFormat</key>
        <enum type="SettingsBase::TextureFormat">png</enum>
        <key>borderPadding</key>
        <uint>0</uint>
        <key>maxTextureSize</key>
        <QSize>
            <key>width</key>
            <int>2048</int>
            <key>height</key>
            <int>2048</int>
        </QSize>
        <key>fixedTextureSize</key>
        <QSize>
            <key>width</key>
            <int>-1</int>
            <key>height</key>
            <int>-1</int>
        </QSize>
        <key>algorithmSettings</key>
        <struct type="AlgorithmSettings">
            <key>algorithm</key>
            <enum type="AlgorithmSettings::AlgorithmId">MaxRects</enum>
            <key>freeSizeMode</key>
            <enum type="AlgorithmSettings::AlgorithmFreeSizeMode">Best</enum>
            <key>sizeConstraints</key>
            <enum type="AlgorithmSettings::SizeConstraints">AnySize</enum>
            <key>forceSquared</key>
            <false/>
            <key>maxRects</key>
            <struct type="AlgorithmMaxRectsSettings">
                <key>heuristic</key>
                <enum type="AlgorithmMaxRectsSettings::Heuristic">Best</enum>
            </struct>
            <key>basic</key>
            <struct type="AlgorithmBasicSettings">
                <key>sortBy</key>
                <enum type="AlgorithmBasicSettings::SortBy">Best</enum>
                <key>order</key>
                <enum type="AlgorithmBasicSettings::Order">Ascending</enum>
            </struct>
            <key>polygon</key>
            <struct type="AlgorithmPolygonSettings">
                <key>alignToGrid</key>
                <uint>1</uint>
            </struct>
        </struct>
        <key>dataFileNames</key>
        <map type="GFileNameMap">
            <key>data</key>
            <struct type="DataFile">
                <key>name</key>
                <filename>../../assets/beach-atlas.json</filename>
            </struct>
        </map>
        <key>multiPack</key>
        <false/>
        <key>forceIdenticalLayout</key>
        <false/>
        <key>outputFormat</key>
        <enum type="SettingsBase::OutputFormat">RGBA8888</enum>
        <key>alphaHandling</key>
        <enum type="SettingsBase::AlphaHandling">ClearTransparentPixels</enum>
        <key>contentProtection</key>
        <struct type="ContentProtection">
            <key>key</key>
            <string></string>
        </struct>
        <key>autoAliasEnabled</key>
        <true/>
        <key>trimSpriteNames</key>
        <false/>
        <key>prependSmartFolderName</key>
        <true/>
        <key>autodetectAnimations</key>
        <true/>
        <key>globalSpriteSettings</key>
        <struct type="SpriteSettings">
            <key>scale</key>
            <double>1</double>
            <key>scaleMode</key>
            <enum type="ScaleMode">Smooth</enum>
            <key>extrude</key>
            <uint>1</uint>
            <key>trimThreshold</key>
            <uint>1</uint>
            <key>trimMargin</key>
            <uint>1</uint>
            <key>trimMode</key>
            <enum type="SpriteSettings::TrimMode">None</enum>
            <key>tracerTolerance</key>
            <int>200</int>
            <key>heuristicMask</key>
            <false/>
            <key>defaultPivotPoint</key>
            <point_f>0.5,0.5</point_f>
            <key>writePivotPoints</key>
            <false/>
        </struct>
        <key>individualSpriteSettings</key>
        <map type="IndividualSpriteSettingsMap">
            <key type="filename">beach-items/alge-grey.png</key>
            <key type="filename">beach-items/alge.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>58,55,116,110</rect>
                <key>scale9Paddings</key>
                <rect>58,55,116,110</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/boat-grey.png</key>
            <key type="filename">beach-items/boat.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>58,55,115,111</rect>
                <key>scale9Paddings</key>
                <rect>58,55,115,111</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/bucket-grey.png</key>
            <key type="filename">beach-items/bucket.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>47,58,93,115</rect>
                <key>scale9Paddings</key>
                <rect>47,58,93,115</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/clam-grey.png</key>
            <key type="filename">beach-items/clam.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>49,46,99,91</rect>
                <key>scale9Paddings</key>
                <rect>49,46,99,91</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/crab-grey.png</key>
            <key type="filename">beach-items/crab.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>62,55,123,109</rect>
                <key>scale9Paddings</key>
                <rect>62,55,123,109</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/divingset-grey.png</key>
            <key type="filename">beach-items/divingset.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>57,54,113,108</rect>
                <key>scale9Paddings</key>
                <rect>57,54,113,108</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/fish1-grey.png</key>
            <key type="filename">beach-items/fish1.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>63,44,127,87</rect>
                <key>scale9Paddings</key>
                <rect>63,44,127,87</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/fish2-grey.png</key>
            <key type="filename">beach-items/fish2.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>59,49,117,97</rect>
                <key>scale9Paddings</key>
                <rect>59,49,117,97</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/fishing-ship-grey.png</key>
            <key type="filename">beach-items/fishing-ship.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>60,58,121,115</rect>
                <key>scale9Paddings</key>
                <rect>60,58,121,115</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/hat-grey.png</key>
            <key type="filename">beach-items/hat.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>59,47,119,93</rect>
                <key>scale9Paddings</key>
                <rect>59,47,119,93</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/ice-grey.png</key>
            <key type="filename">beach-items/ice.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>45,58,90,115</rect>
                <key>scale9Paddings</key>
                <rect>45,58,90,115</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/jelly-grey.png</key>
            <key type="filename">beach-items/jelly.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>53,52,105,104</rect>
                <key>scale9Paddings</key>
                <rect>53,52,105,104</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/seagull-grey.png</key>
            <key type="filename">beach-items/seagull.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>64,52,127,103</rect>
                <key>scale9Paddings</key>
                <rect>64,52,127,103</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/star-grey.png</key>
            <key type="filename">beach-items/star.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>55,57,109,113</rect>
                <key>scale9Paddings</key>
                <rect>55,57,109,113</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/sundance-grey.png</key>
            <key type="filename">beach-items/sundance.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>32,60,65,119</rect>
                <key>scale9Paddings</key>
                <rect>32,60,65,119</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/sunglasses-grey.png</key>
            <key type="filename">beach-items/sunglasses.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>64,47,127,93</rect>
                <key>scale9Paddings</key>
                <rect>64,47,127,93</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-items/trunks-grey.png</key>
            <key type="filename">beach-items/trunks.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>61,47,122,93</rect>
                <key>scale9Paddings</key>
                <rect>61,47,122,93</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/beach.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>16,16,33,33</rect>
                <key>scale9Paddings</key>
                <rect>16,16,33,33</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/bg-beach-up.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>240,64,480,128</rect>
                <key>scale9Paddings</key>
                <rect>240,64,480,128</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/chair.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>96,107,191,215</rect>
                <key>scale9Paddings</key>
                <rect>96,107,191,215</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/lifesaver.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>60,91,119,182</rect>
                <key>scale9Paddings</key>
                <rect>60,91,119,182</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/lighthouse.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>13,35,25,69</rect>
                <key>scale9Paddings</key>
                <rect>13,35,25,69</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/sand.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>39,23,79,47</rect>
                <key>scale9Paddings</key>
                <rect>39,23,79,47</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/sandcastle.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>89,80,177,160</rect>
                <key>scale9Paddings</key>
                <rect>89,80,177,160</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/seagrass.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>91,80,183,161</rect>
                <key>scale9Paddings</key>
                <rect>91,80,183,161</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/ship1.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>18,22,35,43</rect>
                <key>scale9Paddings</key>
                <rect>18,22,35,43</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/ship2.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>10,14,19,27</rect>
                <key>scale9Paddings</key>
                <rect>10,14,19,27</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/ship3.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>32,14,64,27</rect>
                <key>scale9Paddings</key>
                <rect>32,14,64,27</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/ship4.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>30,9,59,17</rect>
                <key>scale9Paddings</key>
                <rect>30,9,59,17</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">beach-tiles/towel.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>113,91,227,183</rect>
                <key>scale9Paddings</key>
                <rect>113,91,227,183</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
        </map>
        <key>fileList</key>
        <array>
            <filename>beach-items</filename>
            <filename>beach-tiles</filename>
        </array>
        <key>ignoreFileList</key>
        <array/>
        <key>replaceList</key>
        <array/>
        <key>ignoredWarnings</key>
        <array/>
        <key>commonDivisorX</key>
        <uint>1</uint>
        <key>commonDivisorY</key>
        <uint>1</uint>
        <key>packNormalMaps</key>
        <false/>
        <key>autodetectNormalMaps</key>
        <true/>
        <key>normalMapFilter</key>
        <string></string>
        <key>normalMapSuffix</key>
        <string></string>
        <key>normalMapSheetFileName</key>
        <filename></filename>
        <key>exporterProperties</key>
        <map type="ExporterProperties"/>
    </struct>
</data>
