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
                <filename>../../assets/city-atlas.json</filename>
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
            <enum type="SpriteSettings::TrimMode">Trim</enum>
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
            <key type="filename">city-items/ambulance-grey.png</key>
            <key type="filename">city-items/ambulance.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>61,46,122,91</rect>
                <key>scale9Paddings</key>
                <rect>61,46,122,91</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/bananas-gey.png</key>
            <key type="filename">city-items/bananas.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>52,54,103,109</rect>
                <key>scale9Paddings</key>
                <rect>52,54,103,109</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/betonmischer-grey.png</key>
            <key type="filename">city-items/betonmischer.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>62,52,123,103</rect>
                <key>scale9Paddings</key>
                <rect>62,52,123,103</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/brokkoli-grey.png</key>
            <key type="filename">city-items/brokkoli.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>58,58,117,116</rect>
                <key>scale9Paddings</key>
                <rect>58,58,117,116</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/bun-grey.png</key>
            <key type="filename">city-items/bun.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>58,45,116,89</rect>
                <key>scale9Paddings</key>
                <rect>58,45,116,89</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/car-grey.png</key>
            <key type="filename">city-items/car.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>62,37,123,74</rect>
                <key>scale9Paddings</key>
                <rect>62,37,123,74</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/carrots-grey.png</key>
            <key type="filename">city-items/carrots.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>57,60,113,119</rect>
                <key>scale9Paddings</key>
                <rect>57,60,113,119</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/cat-grey.png</key>
            <key type="filename">city-items/cat.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>62,56,124,112</rect>
                <key>scale9Paddings</key>
                <rect>62,56,124,112</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/croissant-grey.png</key>
            <key type="filename">city-items/croissant.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>59,48,117,95</rect>
                <key>scale9Paddings</key>
                <rect>59,48,117,95</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/cupcake-grey.png</key>
            <key type="filename">city-items/cupcake.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>47,59,94,117</rect>
                <key>scale9Paddings</key>
                <rect>47,59,94,117</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/dove-grey.png</key>
            <key type="filename">city-items/dove.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>59,58,117,115</rect>
                <key>scale9Paddings</key>
                <rect>59,58,117,115</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/mouse-grey.png</key>
            <key type="filename">city-items/mouse.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>56,57,113,113</rect>
                <key>scale9Paddings</key>
                <rect>56,57,113,113</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/pear-grey.png</key>
            <key type="filename">city-items/pear.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>45,58,89,116</rect>
                <key>scale9Paddings</key>
                <rect>45,58,89,116</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/poop-grey.png</key>
            <key type="filename">city-items/poop.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>43,43,85,85</rect>
                <key>scale9Paddings</key>
                <rect>43,43,85,85</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-items/sausages-grey.png</key>
            <key type="filename">city-items/sausages.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>55,54,110,109</rect>
                <key>scale9Paddings</key>
                <rect>55,54,110,109</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-tiles/ampel.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>29,119,59,237</rect>
                <key>scale9Paddings</key>
                <rect>29,119,59,237</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-tiles/boxes.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>99,84,197,167</rect>
                <key>scale9Paddings</key>
                <rect>99,84,197,167</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-tiles/city-bg-ground.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>8,8,16,16</rect>
                <key>scale9Paddings</key>
                <rect>8,8,16,16</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-tiles/city-bg-up.png</key>
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
            <key type="filename">city-tiles/cobble.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>9,9,19,17</rect>
                <key>scale9Paddings</key>
                <rect>9,9,19,17</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-tiles/flowers.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>66,64,131,127</rect>
                <key>scale9Paddings</key>
                <rect>66,64,131,127</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-tiles/fountain.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>73,94,145,188</rect>
                <key>scale9Paddings</key>
                <rect>73,94,145,188</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-tiles/hydrant.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>41,69,82,137</rect>
                <key>scale9Paddings</key>
                <rect>41,69,82,137</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-tiles/sign.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>47,55,95,110</rect>
                <key>scale9Paddings</key>
                <rect>47,55,95,110</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-tiles/tree.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>88,109,177,219</rect>
                <key>scale9Paddings</key>
                <rect>88,109,177,219</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">city-tiles/wastebin.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>62,93,125,186</rect>
                <key>scale9Paddings</key>
                <rect>62,93,125,186</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
        </map>
        <key>fileList</key>
        <array>
            <filename>city-items</filename>
            <filename>city-tiles</filename>
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
