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
                <filename>../../assets/park-atlas.json</filename>
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
            <key type="filename">park-items/applecore-grey.png</key>
            <key type="filename">park-items/applecore.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>53,60,107,119</rect>
                <key>scale9Paddings</key>
                <rect>53,60,107,119</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/ball-grey.png</key>
            <key type="filename">park-items/ball.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>55,55,111,110</rect>
                <key>scale9Paddings</key>
                <rect>55,55,111,110</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/bee-grey.png</key>
            <key type="filename">park-items/bee.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>56,53,113,105</rect>
                <key>scale9Paddings</key>
                <rect>56,53,113,105</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/bike-grey.png</key>
            <key type="filename">park-items/bike.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>64,51,127,101</rect>
                <key>scale9Paddings</key>
                <rect>64,51,127,101</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/bird-grey.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>56,66,112,131</rect>
                <key>scale9Paddings</key>
                <rect>56,66,112,131</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/bird.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>56,66,111,131</rect>
                <key>scale9Paddings</key>
                <rect>56,66,111,131</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/brezel-grey.png</key>
            <key type="filename">park-items/brezel.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>59,48,119,97</rect>
                <key>scale9Paddings</key>
                <rect>59,48,119,97</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/butterfly-grey.png</key>
            <key type="filename">park-items/butterfly.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>60,55,119,111</rect>
                <key>scale9Paddings</key>
                <rect>60,55,119,111</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/cartoy-grey.png</key>
            <key type="filename">park-items/cartoy.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>61,50,123,99</rect>
                <key>scale9Paddings</key>
                <rect>61,50,123,99</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/duck-grey.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>55,47,110,93</rect>
                <key>scale9Paddings</key>
                <rect>55,47,110,93</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/duck.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>57,47,114,94</rect>
                <key>scale9Paddings</key>
                <rect>57,47,114,94</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/flower-grey.png</key>
            <key type="filename">park-items/flower.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>56,58,111,116</rect>
                <key>scale9Paddings</key>
                <rect>56,58,111,116</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/goldfish-grey.png</key>
            <key type="filename">park-items/goldfish.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>61,43,122,85</rect>
                <key>scale9Paddings</key>
                <rect>61,43,122,85</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/ladybug-grey.png</key>
            <key type="filename">park-items/ladybug.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>58,50,115,100</rect>
                <key>scale9Paddings</key>
                <rect>58,50,115,100</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/mule-grey.png</key>
            <key type="filename">park-items/mule.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>60,57,119,113</rect>
                <key>scale9Paddings</key>
                <rect>60,57,119,113</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/pickup-grey.png</key>
            <key type="filename">park-items/pickup.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>63,44,126,89</rect>
                <key>scale9Paddings</key>
                <rect>63,44,126,89</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/snake-grey.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>56,62,111,125</rect>
                <key>scale9Paddings</key>
                <rect>56,62,111,125</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-items/snake.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>55,62,111,124</rect>
                <key>scale9Paddings</key>
                <rect>55,62,111,124</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-tiles/bg-park-up.png</key>
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
            <key type="filename">park-tiles/bushRed.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>67,65,134,129</rect>
                <key>scale9Paddings</key>
                <rect>67,65,134,129</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-tiles/flowerbed.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>82,83,163,165</rect>
                <key>scale9Paddings</key>
                <rect>82,83,163,165</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-tiles/gras.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>22,16,43,33</rect>
                <key>scale9Paddings</key>
                <rect>22,16,43,33</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-tiles/lantern.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>105,110,211,219</rect>
                <key>scale9Paddings</key>
                <rect>105,110,211,219</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-tiles/park-bg-ground.png</key>
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
            <key type="filename">park-tiles/path-tile.png</key>
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
            <key type="filename">park-tiles/pond.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>109,90,217,179</rect>
                <key>scale9Paddings</key>
                <rect>109,90,217,179</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-tiles/rocker.png</key>
            <struct type="IndividualSpriteSettings">
                <key>pivotPoint</key>
                <point_f>0.5,0.5</point_f>
                <key>scale9Enabled</key>
                <false/>
                <key>scale9Borders</key>
                <rect>79,73,157,146</rect>
                <key>scale9Paddings</key>
                <rect>79,73,157,146</rect>
                <key>scale9FromFile</key>
                <false/>
            </struct>
            <key type="filename">park-tiles/tree.png</key>
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
            <key type="filename">park-tiles/wastebin.png</key>
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
            <filename>park-items</filename>
            <filename>park-tiles</filename>
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
