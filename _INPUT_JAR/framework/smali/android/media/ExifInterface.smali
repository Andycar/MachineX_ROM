.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$1;,
        Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;,
        Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BYTE_ALIGN_II:S = 0x4949s

.field private static final BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final DEBUG:Z = false

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_HINT:I = 0x1

.field private static final IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_HINT:I = 0x2

.field private static final IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_HINT:I = 0x3

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_POINTER_TAG_HINTS:[I

.field private static final IFD_THUMBNAIL_HINT:I = 0x4

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_HINT:I = 0x0

.field private static final IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:[Ljava/util/HashMap;

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mIsSupportedFile:Z

.field private mThumbnailBytes:[B

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const/4 v4, 0x4

    const/4 v15, 0x5

    const/4 v14, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 358
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BYTE"

    aput-object v2, v0, v1

    const-string v1, "STRING"

    aput-object v1, v0, v14

    const-string v1, "USHORT"

    aput-object v1, v0, v3

    const-string v1, "ULONG"

    aput-object v1, v0, v4

    const-string v1, "URATIONAL"

    aput-object v1, v0, v15

    const/4 v1, 0x6

    const-string v2, "SBYTE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UNDEFINED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SSHORT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SLONG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SRATIONAL"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SINGLE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DOUBLE"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 363
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_95c

    sput-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 366
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_97a

    sput-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 775
    const/16 v0, 0x20

    new-array v11, v0, [Landroid/media/ExifInterface$ExifTag;

    const/4 v12, 0x0

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "ImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    const/4 v12, 0x1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "ImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v14

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v3

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v4

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "ImageDescription"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v15

    const/4 v0, 0x6

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Make"

    const/16 v12, 0x10f

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/4 v0, 0x7

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Model"

    const/16 v12, 0x110

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v12, 0x8

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "StripOffsets"

    const/16 v2, 0x111

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    const/16 v0, 0x9

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Orientation"

    const/16 v12, 0x112

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xa

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SamplesPerPixel"

    const/16 v12, 0x115

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v12, 0xb

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    const/16 v0, 0xd

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "XResolution"

    const/16 v12, 0x11a

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xe

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "YResolution"

    const/16 v12, 0x11b

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xf

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "PlanarConfiguration"

    const/16 v12, 0x11c

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x10

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ResolutionUnit"

    const/16 v12, 0x128

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x11

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "TransferFunction"

    const/16 v12, 0x12d

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x12

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Software"

    const/16 v12, 0x131

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x13

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "DateTime"

    const/16 v12, 0x132

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x14

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Artist"

    const/16 v12, 0x13b

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x15

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "WhitePoint"

    const/16 v12, 0x13e

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x16

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "PrimaryChromaticities"

    const/16 v12, 0x13f

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x17

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "JPEGInterchangeFormat"

    const/16 v12, 0x201

    invoke-direct {v1, v2, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x18

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "JPEGInterchangeFormatLength"

    const/16 v12, 0x202

    invoke-direct {v1, v2, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x19

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrCoefficients"

    const/16 v12, 0x211

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1a

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrSubSampling"

    const/16 v12, 0x212

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1b

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrPositioning"

    const/16 v12, 0x213

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1c

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ReferenceBlackWhite"

    const/16 v12, 0x214

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1d

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Copyright"

    const v12, 0x8298

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1e

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v1, v2, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1f

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v1, v2, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    sput-object v11, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 811
    const/16 v0, 0x39

    new-array v11, v0, [Landroid/media/ExifInterface$ExifTag;

    const/4 v0, 0x0

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ExposureTime"

    const v12, 0x829a

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/4 v0, 0x1

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "FNumber"

    const v12, 0x829d

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "ExposureProgram"

    const v2, 0x8822

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v14

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "SpectralSensitivity"

    const v2, 0x8824

    invoke-direct {v0, v1, v2, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v3

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "ISOSpeedRatings"

    const v2, 0x8827

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v4

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "OECF"

    const v2, 0x8828

    const/4 v12, 0x7

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v15

    const/4 v0, 0x6

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ExifVersion"

    const v12, 0x9000

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/4 v0, 0x7

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "DateTimeOriginal"

    const v12, 0x9003

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x8

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "DateTimeDigitized"

    const v12, 0x9004

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x9

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ComponentsConfiguration"

    const v12, 0x9101

    const/4 v13, 0x7

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xa

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "CompressedBitsPerPixel"

    const v12, 0x9102

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xb

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ShutterSpeedValue"

    const v12, 0x9201

    const/16 v13, 0xa

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xc

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ApertureValue"

    const v12, 0x9202

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xd

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "BrightnessValue"

    const v12, 0x9203

    const/16 v13, 0xa

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xe

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ExposureBiasValue"

    const v12, 0x9204

    const/16 v13, 0xa

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xf

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "MaxApertureValue"

    const v12, 0x9205

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x10

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SubjectDistance"

    const v12, 0x9206

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x11

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "MeteringMode"

    const v12, 0x9207

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x12

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "LightSource"

    const v12, 0x9208

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x13

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Flash"

    const v12, 0x9209

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x14

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "FocalLength"

    const v12, 0x920a

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x15

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SubjectArea"

    const v12, 0x9214

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x16

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "MakerNote"

    const v12, 0x927c

    const/4 v13, 0x7

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x17

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "UserComment"

    const v12, 0x9286

    const/4 v13, 0x7

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x18

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SubSecTime"

    const v12, 0x9290

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x19

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SubSecTimeOriginal"

    const v12, 0x9291

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1a

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SubSecTimeDigitized"

    const v12, 0x9292

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1b

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "FlashpixVersion"

    const v12, 0xa000

    const/4 v13, 0x7

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1c

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ColorSpace"

    const v12, 0xa001

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v12, 0x1d

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "PixelXDimension"

    const v2, 0xa002

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1e

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "PixelYDimension"

    const v2, 0xa003

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    const/16 v0, 0x1f

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "RelatedSoundFile"

    const v12, 0xa004

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x20

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "InteroperabilityIFDPointer"

    const v12, 0xa005

    invoke-direct {v1, v2, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x21

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "FlashEnergy"

    const v12, 0xa20b

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x22

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SpatialFrequencyResponse"

    const v12, 0xa20c

    const/4 v13, 0x7

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x23

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "FocalPlaneXResolution"

    const v12, 0xa20e

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x24

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "FocalPlaneYResolution"

    const v12, 0xa20f

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x25

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "FocalPlaneResolutionUnit"

    const v12, 0xa210

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x26

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SubjectLocation"

    const v12, 0xa214

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x27

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ExposureIndex"

    const v12, 0xa215

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x28

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SensingMethod"

    const v12, 0xa217

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x29

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "FileSource"

    const v12, 0xa300

    const/4 v13, 0x7

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x2a

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SceneType"

    const v12, 0xa301

    const/4 v13, 0x7

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x2b

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "CFAPattern"

    const v12, 0xa302

    const/4 v13, 0x7

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x2c

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "CustomRendered"

    const v12, 0xa401

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x2d

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ExposureMode"

    const v12, 0xa402

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x2e

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "WhiteBalance"

    const v12, 0xa403

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x2f

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "DigitalZoomRatio"

    const v12, 0xa404

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x30

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "FocalLengthIn35mmFilm"

    const v12, 0xa405

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x31

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SceneCaptureType"

    const v12, 0xa406

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x32

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "GainControl"

    const v12, 0xa407

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x33

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Contrast"

    const v12, 0xa408

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x34

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Saturation"

    const v12, 0xa409

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x35

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Sharpness"

    const v12, 0xa40a

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x36

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "DeviceSettingDescription"

    const v12, 0xa40b

    const/4 v13, 0x7

    invoke-direct {v1, v2, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x37

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SubjectDistanceRange"

    const v12, 0xa40c

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x38

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ImageUniqueID"

    const v12, 0xa420

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    sput-object v11, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 872
    const/16 v0, 0x1f

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSVersionID"

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct {v2, v11, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSLatitudeRef"

    const/4 v12, 0x1

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "GPSLatitude"

    invoke-direct {v1, v2, v14, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v0, v14

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "GPSLongitudeRef"

    invoke-direct {v1, v2, v3, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "GPSLongitude"

    invoke-direct {v1, v2, v4, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "GPSAltitudeRef"

    const/4 v11, 0x1

    invoke-direct {v1, v2, v15, v11, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v0, v15

    const/4 v1, 0x6

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSAltitude"

    const/4 v12, 0x6

    invoke-direct {v2, v11, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSTimeStamp"

    const/4 v12, 0x7

    invoke-direct {v2, v11, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSSatellites"

    const/16 v12, 0x8

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSStatus"

    const/16 v12, 0x9

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSMeasureMode"

    const/16 v12, 0xa

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDOP"

    const/16 v12, 0xb

    invoke-direct {v2, v11, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSSpeedRef"

    const/16 v12, 0xc

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSSpeed"

    const/16 v12, 0xd

    invoke-direct {v2, v11, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSTrackRef"

    const/16 v12, 0xe

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSTrack"

    const/16 v12, 0xf

    invoke-direct {v2, v11, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSImgDirectionRef"

    const/16 v12, 0x10

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSImgDirection"

    const/16 v12, 0x11

    invoke-direct {v2, v11, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSMapDatum"

    const/16 v12, 0x12

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestLatitudeRef"

    const/16 v12, 0x13

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestLatitude"

    const/16 v12, 0x14

    invoke-direct {v2, v11, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestLongitudeRef"

    const/16 v12, 0x15

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestLongitude"

    const/16 v12, 0x16

    invoke-direct {v2, v11, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestBearingRef"

    const/16 v12, 0x17

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestBearing"

    const/16 v12, 0x18

    invoke-direct {v2, v11, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestDistanceRef"

    const/16 v12, 0x19

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestDistance"

    const/16 v12, 0x1a

    invoke-direct {v2, v11, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSProcessingMethod"

    const/16 v12, 0x1b

    const/4 v13, 0x7

    invoke-direct {v2, v11, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSAreaInformation"

    const/16 v12, 0x1c

    const/4 v13, 0x7

    invoke-direct {v2, v11, v12, v13, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDateStamp"

    const/16 v12, 0x1d

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSDifferential"

    const/16 v12, 0x1e

    invoke-direct {v2, v11, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 906
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "InteroperabilityIndex"

    const/4 v12, 0x1

    invoke-direct {v2, v11, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 910
    const/16 v0, 0x20

    new-array v11, v0, [Landroid/media/ExifInterface$ExifTag;

    const/4 v12, 0x0

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "ThumbnailImageWidth"

    const/16 v2, 0x100

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    const/4 v12, 0x1

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "ThumbnailImageLength"

    const/16 v2, 0x101

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "BitsPerSample"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v14

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "Compression"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v3

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "PhotometricInterpretation"

    const/16 v2, 0x106

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v4

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "ImageDescription"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v15

    const/4 v0, 0x6

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Make"

    const/16 v12, 0x10f

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/4 v0, 0x7

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Model"

    const/16 v12, 0x110

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x8

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "StripOffsets"

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x9

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Orientation"

    const/16 v12, 0x112

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xa

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "SamplesPerPixel"

    const/16 v12, 0x115

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v12, 0xb

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "RowsPerStrip"

    const/16 v2, 0x116

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc

    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "StripByteCounts"

    const/16 v2, 0x117

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$1;)V

    aput-object v0, v11, v12

    const/16 v0, 0xd

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "XResolution"

    const/16 v12, 0x11a

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xe

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "YResolution"

    const/16 v12, 0x11b

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0xf

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "PlanarConfiguration"

    const/16 v12, 0x11c

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x10

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ResolutionUnit"

    const/16 v12, 0x128

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x11

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "TransferFunction"

    const/16 v12, 0x12d

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x12

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Software"

    const/16 v12, 0x131

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x13

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "DateTime"

    const/16 v12, 0x132

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x14

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Artist"

    const/16 v12, 0x13b

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x15

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "WhitePoint"

    const/16 v12, 0x13e

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x16

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "PrimaryChromaticities"

    const/16 v12, 0x13f

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x17

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "JPEGInterchangeFormat"

    const/16 v12, 0x201

    invoke-direct {v1, v2, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x18

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "JPEGInterchangeFormatLength"

    const/16 v12, 0x202

    invoke-direct {v1, v2, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x19

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrCoefficients"

    const/16 v12, 0x211

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1a

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrSubSampling"

    const/16 v12, 0x212

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1b

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "YCbCrPositioning"

    const/16 v12, 0x213

    invoke-direct {v1, v2, v12, v3, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1c

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ReferenceBlackWhite"

    const/16 v12, 0x214

    invoke-direct {v1, v2, v12, v15, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1d

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "Copyright"

    const v12, 0x8298

    invoke-direct {v1, v2, v12, v14, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1e

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v1, v2, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    const/16 v0, 0x1f

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v1, v2, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v11, v0

    sput-object v11, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 955
    new-array v0, v15, [[Landroid/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    sget-object v2, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v2, v0, v1

    sget-object v1, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v14

    sget-object v1, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    .line 960
    new-array v0, v3, [Landroid/media/ExifInterface$ExifTag;

    const/4 v1, 0x0

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v2, v11, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v2, v11, v12, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/media/ExifInterface$ExifTag;

    const-string v2, "InteroperabilityIFDPointer"

    const v11, 0xa005

    invoke-direct {v1, v2, v11, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    aput-object v1, v0, v14

    sput-object v0, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .line 966
    new-array v0, v3, [I

    fill-array-data v0, :array_982

    sput-object v0, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    .line 970
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 972
    new-instance v0, Landroid/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v2, 0x202

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$1;)V

    sput-object v0, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    .line 976
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 978
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 979
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v15, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "FNumber"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-string v5, "DigitalZoomRatio"

    aput-object v5, v1, v2

    const-string v2, "ExposureTime"

    aput-object v2, v1, v14

    const-string v2, "SubjectDistance"

    aput-object v2, v1, v3

    const-string v2, "GPSTimeStamp"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 988
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 990
    const-string v0, "Exif\u0000\u0000"

    sget-object v1, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 1015
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 1016
    sget-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1019
    const/4 v7, 0x0

    .local v7, "hint":I
    :goto_90e
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    if-ge v7, v0, :cond_94b

    .line 1020
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v7

    .line 1021
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v7

    .line 1022
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    aget-object v6, v0, v7

    .local v6, "arr$":[Landroid/media/ExifInterface$ExifTag;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_92b
    if-ge v8, v9, :cond_948

    aget-object v10, v6, v8

    .line 1023
    .local v10, "tag":Landroid/media/ExifInterface$ExifTag;
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v0, v0, v7

    iget v1, v10, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v0, v0, v7

    iget-object v1, v10, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    add-int/lit8 v8, v8, 0x1

    goto :goto_92b

    .line 1019
    .end local v10    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_948
    add-int/lit8 v7, v7, 0x1

    goto :goto_90e

    .line 1040
    .end local v6    # "arr$":[Landroid/media/ExifInterface$ExifTag;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_94b
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 1042
    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    .line 363
    :array_95c
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data

    .line 366
    :array_97a
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 966
    :array_982
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1031
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1049
    if-nez p1, :cond_18

    .line 1050
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_18
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1053
    invoke-direct {p0}, Landroid/media/ExifInterface;->loadAttributes()V

    .line 1054
    return-void
.end method

.method static synthetic access$000()[I
    .registers 1

    .prologue
    .line 53
    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static synthetic access$100()Ljava/nio/charset/Charset;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[B
    .registers 1

    .prologue
    .line 53
    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method private addDefaultValuesForCompatibility()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1897
    const-string v1, "DateTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1898
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 1899
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string v2, "DateTime"

    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    :cond_18
    const-string v1, "ImageWidth"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 1905
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string v2, "ImageWidth"

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    :cond_2f
    const-string v1, "ImageLength"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_46

    .line 1909
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string v2, "ImageLength"

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    :cond_46
    const-string v1, "Orientation"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5d

    .line 1913
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v4

    const-string v2, "Orientation"

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    :cond_5d
    const-string v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_75

    .line 1917
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "LightSource"

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v6, v7, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    :cond_75
    return-void
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 20
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 1568
    :try_start_0
    const-string v9, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1571
    .local v8, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1572
    .local v5, "pair":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v2, v14, v16

    .line 1575
    .local v2, "degrees":D
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1576
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v6, v14, v16

    .line 1579
    .local v6, "minutes":D
    const/4 v9, 0x2

    aget-object v9, v8, v9

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1580
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    div-double v12, v14, v16

    .line 1583
    .local v12, "seconds":D
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double v14, v6, v14

    add-double/2addr v14, v2

    const-wide v16, 0x40ac200000000000L    # 3600.0

    div-double v16, v12, v16

    add-double v10, v14, v16

    .line 1584
    .local v10, "result":D
    const-string v9, "S"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8d

    const-string v9, "W"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8a} :catch_92
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8a} :catch_99

    move-result v9

    if-eqz v9, :cond_90

    .line 1585
    :cond_8d
    neg-double v14, v10

    double-to-float v9, v14

    .line 1587
    :goto_8f
    return v9

    :cond_90
    double-to-float v9, v10

    goto :goto_8f

    .line 1588
    .end local v2    # "degrees":D
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "minutes":D
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "result":D
    .end local v12    # "seconds":D
    :catch_92
    move-exception v4

    .line 1590
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 1591
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_99
    move-exception v4

    .line 1593
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1066
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 1067
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1068
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_13

    .line 1069
    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    .line 1072
    .end local v1    # "value":Ljava/lang/Object;
    :goto_12
    return-object v1

    .line 1066
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1072
    .end local v1    # "value":Ljava/lang/Object;
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private static getIfdHintFromTagNumber(I)I
    .registers 3
    .param p0, "tagNumber"    # I

    .prologue
    .line 2055
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 2056
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v1, p0, :cond_13

    .line 2057
    sget-object v1, Landroid/media/ExifInterface;->IFD_POINTER_TAG_HINTS:[I

    aget v1, v1, v0

    .line 2060
    :goto_12
    return v1

    .line 2055
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2060
    :cond_16
    const/4 v1, -0x1

    goto :goto_12
.end method

.method private getJpegAttributes(Ljava/io/InputStream;)V
    .registers 13
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1603
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1605
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 1606
    .local v1, "bytesRead":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .local v5, "marker":B
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2c

    .line 1607
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid marker: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1609
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    .line 1610
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    const/16 v7, -0x28

    if-eq v6, v7, :cond_55

    .line 1611
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid marker: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1613
    :cond_55
    add-int/lit8 v1, v1, 0x1

    .line 1615
    :goto_57
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 1616
    const/4 v6, -0x1

    if-eq v5, v6, :cond_7d

    .line 1617
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid marker:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1619
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    .line 1620
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 1624
    add-int/lit8 v1, v1, 0x1

    .line 1628
    const/16 v6, -0x27

    if-eq v5, v6, :cond_8d

    const/16 v6, -0x26

    if-ne v5, v6, :cond_8e

    .line 1724
    :cond_8d
    return-void

    .line 1631
    :cond_8e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    add-int/lit8 v4, v6, -0x2

    .line 1632
    .local v4, "length":I
    add-int/lit8 v1, v1, 0x2

    .line 1637
    if-gez v4, :cond_a0

    .line 1638
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid length"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1640
    :cond_a0
    sparse-switch v5, :sswitch_data_16c

    .line 1716
    :cond_a3
    :goto_a3
    if-gez v4, :cond_15b

    .line 1717
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid length"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1645
    :sswitch_ad
    const/4 v6, 0x6

    if-lt v4, v6, :cond_a3

    .line 1649
    const/4 v6, 0x6

    new-array v3, v6, [B

    .line 1650
    .local v3, "identifier":[B
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_c2

    .line 1651
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid exif"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1653
    :cond_c2
    add-int/lit8 v1, v1, 0x6

    .line 1654
    add-int/lit8 v4, v4, -0x6

    .line 1655
    sget-object v6, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 1659
    if-gtz v4, :cond_d8

    .line 1660
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid exif"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1665
    :cond_d8
    new-array v0, v4, [B

    .line 1666
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    if-eq v6, v4, :cond_e8

    .line 1667
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid exif"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1669
    :cond_e8
    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    .line 1670
    add-int/2addr v1, v4

    .line 1671
    const/4 v4, 0x0

    .line 1672
    goto :goto_a3

    .line 1676
    .end local v0    # "bytes":[B
    .end local v3    # "identifier":[B
    :sswitch_ee
    new-array v0, v4, [B

    .line 1677
    .restart local v0    # "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    if-eq v6, v4, :cond_fe

    .line 1678
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid exif"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1680
    :cond_fe
    const/4 v4, 0x0

    .line 1681
    const-string v6, "UserComment"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a3

    .line 1682
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "UserComment"

    new-instance v8, Ljava/lang/String;

    sget-object v9, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v0, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v8}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    .line 1701
    .end local v0    # "bytes":[B
    :sswitch_11d
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_12d

    .line 1702
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid SOFx"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1704
    :cond_12d
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "ImageLength"

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    int-to-long v8, v8

    iget-object v10, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "ImageWidth"

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    int-to-long v8, v8

    iget-object v10, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9, v10}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    add-int/lit8 v4, v4, -0x5

    .line 1709
    goto/16 :goto_a3

    .line 1719
    :cond_15b
    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v6

    if-eq v6, v4, :cond_169

    .line 1720
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid JPEG segment"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1722
    :cond_169
    add-int/2addr v1, v4

    .line 1723
    goto/16 :goto_57

    .line 1640
    :sswitch_data_16c
    .sparse-switch
        -0x40 -> :sswitch_11d
        -0x3f -> :sswitch_11d
        -0x3e -> :sswitch_11d
        -0x3d -> :sswitch_11d
        -0x3b -> :sswitch_11d
        -0x3a -> :sswitch_11d
        -0x39 -> :sswitch_11d
        -0x37 -> :sswitch_11d
        -0x36 -> :sswitch_11d
        -0x35 -> :sswitch_11d
        -0x33 -> :sswitch_11d
        -0x32 -> :sswitch_11d
        -0x31 -> :sswitch_11d
        -0x1f -> :sswitch_ad
        -0x2 -> :sswitch_ee
    .end sparse-switch
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .registers 19
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2246
    const-string v14, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a0

    .line 2247
    const-string v14, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2248
    .local v3, "entryValues":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-static {v14}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 2249
    .local v2, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v14, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_25

    .line 2315
    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "entryValues":[Ljava/lang/String;
    :cond_24
    :goto_24
    return-object v2

    .line 2252
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v3    # "entryValues":[Ljava/lang/String;
    :cond_25
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_26
    array-length v14, v3

    if-ge v8, v14, :cond_24

    .line 2253
    aget-object v14, v3, v8

    invoke-static {v14}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 2254
    .local v7, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v6, -0x1

    .local v6, "first":I
    const/4 v13, -0x1

    .line 2255
    .local v13, "second":I
    iget-object v14, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v14, v15, :cond_3d

    iget-object v14, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v15, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v14, v15, :cond_45

    .line 2257
    :cond_3d
    iget-object v14, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2259
    :cond_45
    iget-object v14, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_64

    iget-object v14, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v14, v15, :cond_5c

    iget-object v14, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v15, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v14, v15, :cond_64

    .line 2261
    :cond_5c
    iget-object v14, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2263
    :cond_64
    const/4 v14, -0x1

    if-ne v6, v14, :cond_7a

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7a

    .line 2264
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_24

    .line 2266
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7a
    const/4 v14, -0x1

    if-ne v6, v14, :cond_8e

    .line 2267
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2252
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8b
    :goto_8b
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 2270
    :cond_8e
    const/4 v14, -0x1

    if-ne v13, v14, :cond_8b

    .line 2271
    new-instance v2, Landroid/util/Pair;

    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2272
    .restart local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_8b

    .line 2278
    .end local v2    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "entryValues":[Ljava/lang/String;
    .end local v6    # "first":I
    .end local v7    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    .end local v13    # "second":I
    :cond_a0
    const-string v14, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_125

    .line 2279
    const-string v14, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2280
    .local v12, "rationalNumber":[Ljava/lang/String;
    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_e3

    .line 2282
    const/4 v14, 0x0

    :try_start_b7
    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2283
    .local v10, "numerator":J
    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2284
    .local v4, "denominator":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-ltz v14, :cond_d0

    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-gez v14, :cond_f4

    .line 2285
    :cond_d0
    new-instance v2, Landroid/util/Pair;

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e0
    .catch Ljava/lang/NumberFormatException; {:try_start_b7 .. :try_end_e0} :catch_e2

    goto/16 :goto_24

    .line 2291
    .end local v4    # "denominator":J
    .end local v10    # "numerator":J
    :catch_e2
    move-exception v14

    .line 2295
    :cond_e3
    new-instance v2, Landroid/util/Pair;

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 2287
    .restart local v4    # "denominator":J
    .restart local v10    # "numerator":J
    :cond_f4
    const-wide/32 v14, 0x7fffffff

    cmp-long v14, v10, v14

    if-gtz v14, :cond_102

    const-wide/32 v14, 0x7fffffff

    cmp-long v14, v4, v14

    if-lez v14, :cond_113

    .line 2288
    :cond_102
    :try_start_102
    new-instance v2, Landroid/util/Pair;

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 2290
    :cond_113
    new-instance v2, Landroid/util/Pair;

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_123
    .catch Ljava/lang/NumberFormatException; {:try_start_102 .. :try_end_123} :catch_e2

    goto/16 :goto_24

    .line 2298
    .end local v4    # "denominator":J
    .end local v10    # "numerator":J
    .end local v12    # "rationalNumber":[Ljava/lang/String;
    :cond_125
    :try_start_125
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2299
    .local v9, "longValue":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_17b

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/32 v16, 0xffff

    cmp-long v14, v14, v16

    if-gtz v14, :cond_17b

    .line 2300
    new-instance v2, Landroid/util/Pair;

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_151
    .catch Ljava/lang/NumberFormatException; {:try_start_125 .. :try_end_151} :catch_153

    goto/16 :goto_24

    .line 2306
    .end local v9    # "longValue":Ljava/lang/Long;
    :catch_153
    move-exception v14

    .line 2310
    :try_start_154
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 2311
    new-instance v2, Landroid/util/Pair;

    const/16 v14, 0xc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_167
    .catch Ljava/lang/NumberFormatException; {:try_start_154 .. :try_end_167} :catch_169

    goto/16 :goto_24

    .line 2312
    :catch_169
    move-exception v14

    .line 2315
    new-instance v2, Landroid/util/Pair;

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 2302
    .restart local v9    # "longValue":Ljava/lang/Long;
    :cond_17b
    :try_start_17b
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gez v14, :cond_197

    .line 2303
    new-instance v2, Landroid/util/Pair;

    const/16 v14, 0x9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 2305
    :cond_197
    new-instance v2, Landroid/util/Pair;

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a6
    .catch Ljava/lang/NumberFormatException; {:try_start_17b .. :try_end_1a6} :catch_153

    goto/16 :goto_24
.end method

.method private loadAttributes()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1330
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v4, v4

    if-ge v1, v4, :cond_12

    .line 1331
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    aput-object v5, v4, v1

    .line 1330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1333
    :cond_12
    const/4 v2, 0x0

    .line 1335
    .local v2, "in":Ljava/io/InputStream;
    :try_start_13
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_28
    .catchall {:try_start_13 .. :try_end_1a} :catchall_3a

    .line 1336
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1a
    invoke-direct {p0, v3}, Landroid/media/ExifInterface;->getJpegAttributes(Ljava/io/InputStream;)V

    .line 1337
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_45
    .catchall {:try_start_1a .. :try_end_20} :catchall_42

    .line 1344
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1348
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v3

    .line 1350
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_27
    return-void

    .line 1338
    :catch_28
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/io/IOException;
    :goto_29
    const/4 v4, 0x0

    :try_start_2a
    iput-boolean v4, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    .line 1342
    const-string v4, "ExifInterface"

    const-string v5, "Invalid image."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_3a

    .line 1344
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1348
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_27

    .line 1344
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3a
    move-exception v4

    :goto_3b
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1348
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 1344
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_42
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3b

    .line 1338
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_45
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_29
.end method

.method private printAttributes()V
    .registers 8

    .prologue
    .line 1354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v4, v4

    if-ge v1, v4, :cond_94

    .line 1355
    const-string v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The size of tag group["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1357
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    .line 1358
    .local v3, "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    const-string v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagValue: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1354
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "tagValue":Landroid/media/ExifInterface$ExifAttribute;
    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1362
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_94
    return-void
.end method

.method private readExifSegment([BI)V
    .registers 15
    .param p1, "exifBytes"    # [B
    .param p2, "exifOffsetFromBeginning"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1827
    new-instance v1, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;-><init>([B)V

    .line 1831
    .local v1, "dataInputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v0

    .line 1832
    .local v0, "byteOrder":S
    sparse-switch v0, :sswitch_data_e8

    .line 1846
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid byte order: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1837
    :sswitch_29
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1850
    :goto_2d
    iget-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v9}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 1852
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v8

    .line 1853
    .local v8, "startCode":I
    const/16 v9, 0x2a

    if-eq v8, v9, :cond_5c

    .line 1854
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid exif start: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1843
    .end local v8    # "startCode":I
    :sswitch_57
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v9, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    goto :goto_2d

    .line 1858
    .restart local v8    # "startCode":I
    :cond_5c
    invoke-virtual {v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v2

    .line 1859
    .local v2, "firstIfdOffset":J
    const-wide/16 v10, 0x8

    cmp-long v9, v2, v10

    if-ltz v9, :cond_6c

    array-length v9, p1

    int-to-long v10, v9

    cmp-long v9, v2, v10

    if-ltz v9, :cond_85

    .line 1860
    :cond_6c
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid first Ifd offset: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1862
    :cond_85
    const-wide/16 v10, 0x8

    sub-long/2addr v2, v10

    .line 1863
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_af

    .line 1864
    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->skip(J)J

    move-result-wide v10

    cmp-long v9, v10, v2

    if-eqz v9, :cond_af

    .line 1865
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1870
    :cond_af
    const/4 v9, 0x0

    invoke-direct {p0, v1, v9}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    .line 1873
    sget-object v9, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v9, v9, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {p0, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1874
    .local v7, "jpegInterchangeFormatString":Ljava/lang/String;
    sget-object v9, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    iget-object v9, v9, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {p0, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1876
    .local v6, "jpegInterchangeFormatLengthString":Ljava/lang/String;
    if-eqz v7, :cond_e5

    if-eqz v6, :cond_e5

    .line 1878
    :try_start_c7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1879
    .local v4, "jpegInterchangeFormat":I
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1882
    .local v5, "jpegInterchangeFormatLength":I
    add-int v9, v4, v5

    array-length v10, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v5, v9, v4

    .line 1884
    if-lez v4, :cond_e5

    if-lez v5, :cond_e5

    .line 1885
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 1886
    add-int v9, p2, v4

    iput v9, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 1887
    iput v5, p0, Landroid/media/ExifInterface;->mThumbnailLength:I
    :try_end_e5
    .catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_e5} :catch_e6

    .line 1893
    .end local v4    # "jpegInterchangeFormat":I
    .end local v5    # "jpegInterchangeFormatLength":I
    :cond_e5
    :goto_e5
    return-void

    .line 1889
    :catch_e6
    move-exception v9

    goto :goto_e5

    .line 1832
    :sswitch_data_e8
    .sparse-switch
        0x4949 -> :sswitch_29
        0x4d4d -> :sswitch_57
    .end sparse-switch
.end method

.method private readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V
    .registers 27
    .param p1, "dataInputStream"    # Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    .param p2, "hint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1925
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v20

    const-wide/16 v22, 0x2

    add-long v20, v20, v22

    # getter for: Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-lez v19, :cond_11

    .line 2051
    :cond_10
    :goto_10
    return-void

    .line 1930
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v14

    .line 1931
    .local v14, "numberOfDirectoryEntry":S
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v20

    mul-int/lit8 v19, v14, 0xc

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    # getter for: Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gtz v19, :cond_10

    .line 1940
    const/4 v7, 0x0

    .local v7, "i":S
    :goto_2b
    if-ge v7, v14, :cond_18e

    .line 1941
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v18

    .line 1942
    .local v18, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v6

    .line 1943
    .local v6, "dataFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v9

    .line 1944
    .local v9, "numberOfComponents":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v20

    const-wide/16 v22, 0x4

    add-long v10, v20, v22

    .line 1947
    .local v10, "nextEntryOffset":J
    sget-object v19, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v19, v19, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/ExifInterface$ExifTag;

    .line 1955
    .local v15, "tag":Landroid/media/ExifInterface$ExifTag;
    if-eqz v15, :cond_5e

    if-lez v6, :cond_5e

    sget-object v19, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v6, v0, :cond_a2

    .line 1958
    :cond_5e
    if-nez v15, :cond_87

    .line 1959
    const-string v19, "ExifInterface"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Skip the tag entry since tag number is not defined: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    :goto_7c
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 1940
    :cond_81
    :goto_81
    add-int/lit8 v19, v7, 0x1

    move/from16 v0, v19

    int-to-short v7, v0

    goto :goto_2b

    .line 1961
    :cond_87
    const-string v19, "ExifInterface"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Skip the tag entry since data format is invalid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 1969
    :cond_a2
    sget-object v19, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v19, v19, v6

    mul-int v4, v9, v19

    .line 1970
    .local v4, "byteCount":I
    const/16 v19, 0x4

    move/from16 v0, v19

    if-le v4, v0, :cond_c6

    .line 1971
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v16

    .line 1975
    .local v16, "offset":J
    int-to-long v0, v4

    move-wide/from16 v20, v0

    add-long v20, v20, v16

    # getter for: Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gtz v19, :cond_f3

    .line 1976
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 1986
    .end local v16    # "offset":J
    :cond_c6
    invoke-static/range {v18 .. v18}, Landroid/media/ExifInterface;->getIfdHintFromTagNumber(I)I

    move-result v8

    .line 1991
    .local v8, "innerIfdHint":I
    if-ltz v8, :cond_156

    .line 1992
    const-wide/16 v16, -0x1

    .line 1994
    .restart local v16    # "offset":J
    packed-switch v6, :pswitch_data_1c2

    .line 2019
    :goto_d1
    :pswitch_d1
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-lez v19, :cond_139

    # getter for: Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v20

    cmp-long v19, v16, v20

    if-gez v19, :cond_139

    .line 2020
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2021
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    .line 2026
    :goto_ed
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    goto :goto_81

    .line 1979
    .end local v8    # "innerIfdHint":I
    :cond_f3
    const-string v19, "ExifInterface"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Skip the tag entry since data offset is invalid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    goto/16 :goto_81

    .line 1996
    .restart local v8    # "innerIfdHint":I
    :pswitch_116
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 1997
    goto :goto_d1

    .line 2000
    :pswitch_120
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 2001
    goto :goto_d1

    .line 2004
    :pswitch_12a
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v16

    .line 2005
    goto :goto_d1

    .line 2008
    :pswitch_12f
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 2009
    goto :goto_d1

    .line 2023
    :cond_139
    const-string v19, "ExifInterface"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 2030
    .end local v16    # "offset":J
    :cond_156
    sget-object v19, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v19, v19, v6

    mul-int v19, v19, v9

    move/from16 v0, v19

    new-array v5, v0, [B

    .line 2031
    .local v5, "bytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFully([B)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v19, v0

    aget-object v19, v19, p2

    iget-object v0, v15, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v9, v5, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[BLandroid/media/ExifInterface$1;)V

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v20

    cmp-long v19, v20, v10

    if-eqz v19, :cond_81

    .line 2035
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    goto/16 :goto_81

    .line 2039
    .end local v4    # "byteCount":I
    .end local v5    # "bytes":[B
    .end local v6    # "dataFormat":I
    .end local v8    # "innerIfdHint":I
    .end local v9    # "numberOfComponents":I
    .end local v10    # "nextEntryOffset":J
    .end local v15    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v18    # "tagNumber":I
    :cond_18e
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->peek()J

    move-result-wide v20

    const-wide/16 v22, 0x4

    add-long v20, v20, v22

    # getter for: Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gtz v19, :cond_10

    .line 2040
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v12

    .line 2046
    .local v12, "nextIfdOffset":J
    const-wide/16 v20, 0x8

    cmp-long v19, v12, v20

    if-lez v19, :cond_10

    # getter for: Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->mLength:J
    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->access$800(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;)J

    move-result-wide v20

    cmp-long v19, v12, v20

    if-gez v19, :cond_10

    .line 2047
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->seek(J)V

    .line 2048
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;I)V

    goto/16 :goto_10

    .line 1994
    :pswitch_data_1c2
    .packed-switch 0x3
        :pswitch_116
        :pswitch_12a
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_120
        :pswitch_12f
    .end packed-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 1319
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1321
    :cond_10
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 15
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1734
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1735
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v2, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, p2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 1737
    .local v2, "dataOutputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1b

    .line 1738
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1740
    :cond_1b
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1741
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    const/16 v8, -0x28

    if-eq v7, v8, :cond_2f

    .line 1742
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1744
    :cond_2f
    const/16 v7, -0x28

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1747
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1748
    const/16 v7, -0x1f

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1749
    const/4 v7, 0x6

    invoke-direct {p0, v2, v7}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;I)I

    .line 1751
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 1754
    .local v0, "bytes":[B
    :cond_45
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 1755
    .local v5, "marker":B
    const/4 v7, -0x1

    if-eq v5, v7, :cond_54

    .line 1756
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1758
    :cond_54
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 1759
    sparse-switch v5, :sswitch_data_100

    .line 1804
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1805
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1806
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 1807
    .local v4, "length":I
    invoke-virtual {v2, v4}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 1808
    add-int/lit8 v4, v4, -0x2

    .line 1809
    if-gez v4, :cond_eb

    .line 1810
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1761
    .end local v4    # "length":I
    :sswitch_75
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    add-int/lit8 v4, v7, -0x2

    .line 1762
    .restart local v4    # "length":I
    if-gez v4, :cond_85

    .line 1763
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1765
    :cond_85
    const/4 v7, 0x6

    new-array v3, v7, [B

    .line 1766
    .local v3, "identifier":[B
    const/4 v7, 0x6

    if-lt v4, v7, :cond_b8

    .line 1767
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_9a

    .line 1768
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid exif"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1770
    :cond_9a
    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 1772
    add-int/lit8 v7, v4, -0x6

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v8

    add-int/lit8 v7, v4, -0x6

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-eqz v7, :cond_45

    .line 1773
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1779
    :cond_b8
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1780
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1781
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 1782
    const/4 v7, 0x6

    if-lt v4, v7, :cond_cc

    .line 1783
    add-int/lit8 v4, v4, -0x6

    .line 1784
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 1787
    :cond_cc
    :goto_cc
    if-lez v4, :cond_45

    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1, v0, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .local v6, "read":I
    if-ltz v6, :cond_45

    .line 1789
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v6}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    .line 1790
    sub-int/2addr v4, v6

    goto :goto_cc

    .line 1796
    .end local v3    # "identifier":[B
    .end local v4    # "length":I
    .end local v6    # "read":I
    :sswitch_e0
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1797
    invoke-virtual {v2, v5}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 1799
    invoke-static {v1, v2}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1800
    return-void

    .line 1813
    .restart local v4    # "length":I
    :cond_eb
    :goto_eb
    if-lez v4, :cond_45

    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1, v0, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .restart local v6    # "read":I
    if-ltz v6, :cond_45

    .line 1815
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v6}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    .line 1816
    sub-int/2addr v4, v6

    goto :goto_eb

    .line 1759
    nop

    :sswitch_data_100
    .sparse-switch
        -0x27 -> :sswitch_e0
        -0x26 -> :sswitch_e0
        -0x1f -> :sswitch_75
    .end sparse-switch
.end method

.method private updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/ExifInterface$ExifAttribute;

    .prologue
    .line 1302
    const/4 v1, 0x0

    .line 1303
    .local v1, "updated":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 1304
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1305
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    const/4 v1, 0x1

    .line 1303
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1309
    :cond_1c
    return v1
.end method

.method private writeExifSegment(Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;I)I
    .registers 31
    .param p1, "dataOutputStream"    # Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;
    .param p2, "exifOffsetFromBeginning"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2067
    sget-object v23, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v13, v0, [I

    .line 2068
    .local v13, "ifdOffsets":[I
    sget-object v23, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v12, v0, [I

    .line 2071
    .local v12, "ifdDataSizes":[I
    sget-object v4, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    .local v4, "arr$":[Landroid/media/ExifInterface$ExifTag;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1a
    if-ge v11, v14, :cond_2e

    aget-object v19, v4, v11

    .line 2072
    .local v19, "tag":Landroid/media/ExifInterface$ExifTag;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 2071
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    .line 2075
    .end local v19    # "tag":Landroid/media/ExifInterface$ExifTag;
    :cond_2e
    sget-object v23, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 2076
    sget-object v23, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 2079
    const/4 v9, 0x0

    .end local v4    # "arr$":[Landroid/media/ExifInterface$ExifTag;
    .local v9, "hint":I
    :goto_4d
    sget-object v23, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_8c

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/Object;
    array-length v14, v4

    const/4 v11, 0x0

    :goto_6a
    if-ge v11, v14, :cond_89

    aget-object v15, v4, v11

    .local v15, "obj":Ljava/lang/Object;
    move-object v7, v15

    .line 2081
    check-cast v7, Ljava/util/Map$Entry;

    .line 2082
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    if-nez v23, :cond_86

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    :cond_86
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    .line 2079
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "obj":Ljava/lang/Object;
    :cond_89
    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    .line 2090
    .end local v4    # "arr$":[Ljava/lang/Object;
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_c5

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    sget-object v24, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v25, 0x2

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_fe

    .line 2095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    sget-object v24, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    :cond_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_137

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    sget-object v24, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    :cond_137
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v23, v0

    if-eqz v23, :cond_192

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    sget-object v24, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    sget-object v24, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    :cond_192
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .local v10, "i":I
    :goto_193
    sget-object v23, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_1da

    .line 2112
    const/16 v18, 0x0

    .line 2113
    .local v18, "sum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    aget-object v23, v23, v10

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1b0
    :goto_1b0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1d1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2114
    .restart local v7    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    .line 2115
    .local v8, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v8}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v17

    .line 2116
    .local v17, "size":I
    const/16 v23, 0x4

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_1b0

    .line 2117
    add-int v18, v18, v17

    goto :goto_1b0

    .line 2120
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v17    # "size":I
    :cond_1d1
    aget v23, v12, v10

    add-int v23, v23, v18

    aput v23, v12, v10

    .line 2111
    add-int/lit8 v10, v10, 0x1

    goto :goto_193

    .line 2124
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v18    # "sum":I
    :cond_1da
    const/16 v16, 0x8

    .line 2125
    .local v16, "position":I
    const/4 v9, 0x0

    :goto_1dd
    sget-object v23, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_213

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_210

    .line 2127
    aput v16, v13, v9

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    mul-int/lit8 v23, v23, 0xc

    add-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0x4

    aget v24, v12, v9

    add-int v23, v23, v24

    add-int v16, v16, v23

    .line 2125
    :cond_210
    add-int/lit8 v9, v9, 0x1

    goto :goto_1dd

    .line 2131
    :cond_213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v23, v0

    if-eqz v23, :cond_255

    .line 2132
    move/from16 v21, v16

    .line 2133
    .local v21, "thumbnailOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    sget-object v24, Landroid/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    add-int v23, p2, v21

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/ExifInterface;->mThumbnailOffset:I

    .line 2136
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    move/from16 v23, v0

    add-int v16, v16, v23

    .line 2140
    .end local v21    # "thumbnailOffset":I
    :cond_255
    add-int/lit8 v22, v16, 0x8

    .line 2150
    .local v22, "totalSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_297

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    sget-object v24, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v13, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    :cond_297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2d7

    .line 2155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    sget-object v24, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v25, v13, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    :cond_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_317

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    sget-object v24, Landroid/media/ExifInterface;->IFD_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v25, 0x2

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget v25, v13, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    :cond_317
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2165
    sget-object v23, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    sget-object v24, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_40c

    const/16 v23, 0x4d4d

    :goto_337
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeShort(S)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2169
    const/16 v23, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2170
    const-wide/16 v24, 0x8

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    .line 2173
    const/4 v9, 0x0

    :goto_35e
    sget-object v23, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_4b5

    .line 2174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_4b1

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2180
    aget v23, v13, v9

    add-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v24, v0

    aget-object v24, v24, v9

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    mul-int/lit8 v24, v24, 0xc

    add-int v23, v23, v24

    add-int/lit8 v6, v23, 0x4

    .line 2181
    .local v6, "dataOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_3b0
    :goto_3b0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_437

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2183
    .restart local v7    # "entry":Ljava/util/Map$Entry;
    sget-object v23, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v23, v23, v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/media/ExifInterface$ExifTag;

    .line 2184
    .restart local v19    # "tag":Landroid/media/ExifInterface$ExifTag;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/ExifInterface$ExifTag;->number:I

    move/from16 v20, v0

    .line 2185
    .local v20, "tagNumber":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ExifInterface$ExifAttribute;

    .line 2186
    .local v5, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    invoke-virtual {v5}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v17

    .line 2188
    .restart local v17    # "size":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2189
    iget v0, v5, Landroid/media/ExifInterface$ExifAttribute;->format:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedShort(I)V

    .line 2190
    iget v0, v5, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeInt(I)V

    .line 2191
    const/16 v23, 0x4

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_410

    .line 2192
    int-to-long v0, v6

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    .line 2193
    add-int v6, v6, v17

    goto :goto_3b0

    .line 2166
    .end local v5    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v6    # "dataOffset":I
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "size":I
    .end local v19    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v20    # "tagNumber":I
    :cond_40c
    const/16 v23, 0x4949

    goto/16 :goto_337

    .line 2195
    .restart local v5    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .restart local v6    # "dataOffset":I
    .restart local v7    # "entry":Ljava/util/Map$Entry;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v17    # "size":I
    .restart local v19    # "tag":Landroid/media/ExifInterface$ExifTag;
    .restart local v20    # "tagNumber":I
    :cond_410
    iget-object v0, v5, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2197
    const/16 v23, 0x4

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_3b0

    .line 2198
    move/from16 v10, v17

    :goto_425
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v10, v0, :cond_3b0

    .line 2199
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeByte(I)V

    .line 2198
    add-int/lit8 v10, v10, 0x1

    goto :goto_425

    .line 2208
    .end local v5    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v17    # "size":I
    .end local v19    # "tag":Landroid/media/ExifInterface$ExifTag;
    .end local v20    # "tagNumber":I
    :cond_437
    if-nez v9, :cond_4a7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_4a7

    .line 2209
    const/16 v23, 0x4

    aget v23, v13, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    .line 2215
    :goto_459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move-object/from16 v23, v0

    aget-object v23, v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_469
    :goto_469
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4b1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2216
    .restart local v7    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ExifInterface$ExifAttribute;

    .line 2218
    .restart local v5    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    iget-object v0, v5, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_469

    .line 2219
    iget-object v0, v5, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget-object v0, v5, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([BII)V

    goto :goto_469

    .line 2211
    .end local v5    # "attribute":Landroid/media/ExifInterface$ExifAttribute;
    .end local v7    # "entry":Ljava/util/Map$Entry;
    :cond_4a7
    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->writeUnsignedInt(J)V

    goto :goto_459

    .line 2173
    .end local v6    # "dataOffset":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_4b1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_35e

    .line 2226
    :cond_4b5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4c8

    .line 2227
    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->write([B)V

    .line 2231
    :cond_4c8
    sget-object v23, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ByteOrderAwarenessDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2233
    return v22
.end method


# virtual methods
.method public getAltitude(D)D
    .registers 12
    .param p1, "defaultValue"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1494
    const-string v5, "GPSAltitude"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 1495
    .local v0, "altitude":D
    const-string v5, "GPSAltitudeRef"

    invoke-virtual {p0, v5, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 1497
    .local v2, "ref":I
    const-wide/16 v6, 0x0

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_1d

    if-ltz v2, :cond_1d

    .line 1498
    if-ne v2, v4, :cond_1e

    :goto_1a
    int-to-double v4, v3

    mul-double p1, v0, v4

    .line 1500
    .end local p1    # "defaultValue":D
    :cond_1d
    return-wide p1

    .restart local p1    # "defaultValue":D
    :cond_1e
    move v3, v4

    .line 1498
    goto :goto_1a
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1082
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1083
    .local v1, "attribute":Landroid/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_8c

    .line 1084
    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1085
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    .line 1108
    :goto_19
    return-object v3

    .line 1087
    :cond_1a
    const-string v3, "GPSTimeStamp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1089
    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2f

    iget v3, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v5, 0xa

    if-eq v3, v5, :cond_2f

    move-object v3, v4

    .line 1091
    goto :goto_19

    .line 1093
    :cond_2f
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    # invokes: Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    invoke-static {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/ExifInterface$Rational;

    move-object v0, v3

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    .line 1094
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    if-eq v3, v6, :cond_3f

    move-object v3, v4

    .line 1095
    goto :goto_19

    .line 1097
    :cond_3f
    const-string v3, "%02d:%02d:%02d"

    new-array v4, v6, [Ljava/lang/Object;

    aget-object v5, v0, v8

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v8

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aget-object v5, v0, v9

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v9

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    aget-object v5, v0, v10

    iget-wide v6, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v6

    aget-object v6, v0, v10

    iget-wide v6, v6, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    .line 1103
    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_7e
    :try_start_7e
    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_87} :catch_89

    move-result-object v3

    goto :goto_19

    .line 1104
    :catch_89
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    move-object v3, v4

    .line 1105
    goto :goto_19

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_8c
    move-object v3, v4

    .line 1108
    goto :goto_19
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1142
    .local v1, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_7

    .line 1149
    .end local p2    # "defaultValue":D
    :goto_6
    return-wide p2

    .line 1147
    .restart local p2    # "defaultValue":D
    :cond_7
    :try_start_7
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_c} :catch_e

    move-result-wide p2

    goto :goto_6

    .line 1148
    :catch_e
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_6
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 1120
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    .line 1121
    .local v1, "exifAttribute":Landroid/media/ExifInterface$ExifAttribute;
    if-nez v1, :cond_7

    .line 1128
    .end local p2    # "defaultValue":I
    :goto_6
    return p2

    .line 1126
    .restart local p2    # "defaultValue":I
    :cond_7
    :try_start_7
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_c} :catch_e

    move-result p2

    goto :goto_6

    .line 1127
    :catch_e
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_6
.end method

.method public getDateTime()J
    .registers 15

    .prologue
    const-wide/16 v10, -0x1

    .line 1510
    const-string v9, "DateTime"

    invoke-virtual {p0, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1511
    .local v0, "dateTimeString":Ljava/lang/String;
    if-eqz v0, :cond_16

    sget-object v9, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_18

    :cond_16
    move-wide v4, v10

    .line 1536
    :cond_17
    :goto_17
    return-wide v4

    .line 1514
    :cond_18
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1518
    .local v3, "pos":Ljava/text/ParsePosition;
    :try_start_1e
    sget-object v9, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 1519
    .local v1, "datetime":Ljava/util/Date;
    if-nez v1, :cond_28

    move-wide v4, v10

    goto :goto_17

    .line 1520
    :cond_28
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1522
    .local v4, "msecs":J
    const-string v9, "SubSecTime"

    invoke-virtual {p0, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_31} :catch_48

    move-result-object v8

    .line 1523
    .local v8, "subSecs":Ljava/lang/String;
    if-eqz v8, :cond_17

    .line 1525
    :try_start_34
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1526
    .local v6, "sub":J
    :goto_3c
    const-wide/16 v12, 0x3e8

    cmp-long v9, v6, v12

    if-lez v9, :cond_46

    .line 1527
    const-wide/16 v12, 0xa

    div-long/2addr v6, v12
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_45} :catch_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_45} :catch_48

    goto :goto_3c

    .line 1529
    :cond_46
    add-long/2addr v4, v6

    goto :goto_17

    .line 1535
    .end local v1    # "datetime":Ljava/util/Date;
    .end local v4    # "msecs":J
    .end local v6    # "sub":J
    .end local v8    # "subSecs":Ljava/lang/String;
    :catch_48
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    move-wide v4, v10

    .line 1536
    goto :goto_17

    .line 1530
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "datetime":Ljava/util/Date;
    .restart local v4    # "msecs":J
    .restart local v8    # "subSecs":Ljava/lang/String;
    :catch_4b
    move-exception v9

    goto :goto_17
.end method

.method public getGpsDateTime()J
    .registers 11

    .prologue
    const-wide/16 v6, -0x1

    .line 1546
    const-string v8, "GPSDateStamp"

    invoke-virtual {p0, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, "date":Ljava/lang/String;
    const-string v8, "GPSTimeStamp"

    invoke-virtual {p0, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1548
    .local v5, "time":Ljava/lang/String;
    if-eqz v0, :cond_2a

    if-eqz v5, :cond_2a

    sget-object v8, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_2b

    sget-object v8, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_2b

    .line 1562
    :cond_2a
    :goto_2a
    return-wide v6

    .line 1554
    :cond_2b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1556
    .local v1, "dateTimeString":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1558
    .local v4, "pos":Ljava/text/ParsePosition;
    :try_start_48
    sget-object v8, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 1559
    .local v2, "datetime":Ljava/util/Date;
    if-eqz v2, :cond_2a

    .line 1560
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_53} :catch_55

    move-result-wide v6

    goto :goto_2a

    .line 1561
    .end local v2    # "datetime":Ljava/util/Date;
    :catch_55
    move-exception v3

    .line 1562
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2a
.end method

.method public getLatLong([F)Z
    .registers 10
    .param p1, "output"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1469
    const-string v6, "GPSLatitude"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1470
    .local v1, "latValue":Ljava/lang/String;
    const-string v6, "GPSLatitudeRef"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, "latRef":Ljava/lang/String;
    const-string v6, "GPSLongitude"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1472
    .local v3, "lngValue":Ljava/lang/String;
    const-string v6, "GPSLongitudeRef"

    invoke-virtual {p0, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1474
    .local v2, "lngRef":Ljava/lang/String;
    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    if-eqz v3, :cond_32

    if-eqz v2, :cond_32

    .line 1476
    const/4 v6, 0x0

    :try_start_23
    invoke-static {v1, v0}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v7

    aput v7, p1, v6

    .line 1477
    const/4 v6, 0x1

    invoke-static {v3, v2}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v7

    aput v7, p1, v6
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_30} :catch_31

    .line 1484
    :goto_30
    return v4

    .line 1479
    :catch_31
    move-exception v4

    :cond_32
    move v4, v5

    .line 1484
    goto :goto_30
.end method

.method public getThumbnail()[B
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 1416
    iget-boolean v4, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v4, :cond_7

    move-object v0, v3

    .line 1440
    :goto_6
    return-object v0

    .line 1419
    :cond_7
    iget-object v4, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v4, :cond_e

    .line 1420
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    goto :goto_6

    .line 1424
    :cond_e
    const/4 v1, 0x0

    .line 1426
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_f
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_53
    .catchall {:try_start_f .. :try_end_16} :catchall_51

    .line 1427
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_16
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_33

    .line 1428
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Corrupted image"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2c} :catch_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_47

    .line 1435
    :catch_2c
    move-exception v4

    move-object v1, v2

    .line 1438
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_2e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v3

    .line 1440
    goto :goto_6

    .line 1430
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :cond_33
    :try_start_33
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v0, v4, [B

    .line 1431
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    iget v5, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-eq v4, v5, :cond_4d

    .line 1432
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Corrupted image"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_47} :catch_2c
    .catchall {:try_start_33 .. :try_end_47} :catchall_47

    .line 1438
    .end local v0    # "buffer":[B
    :catchall_47
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_49
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :cond_4d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6

    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_51
    move-exception v3

    goto :goto_49

    .line 1435
    :catch_53
    move-exception v4

    goto :goto_2e
.end method

.method public getThumbnailRange()[J
    .registers 5

    .prologue
    .line 1452
    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v1, :cond_6

    .line 1453
    const/4 v0, 0x0

    .line 1460
    :goto_5
    return-object v0

    .line 1456
    :cond_6
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 1457
    .local v0, "range":[J
    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 1458
    const/4 v1, 0x1

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    goto :goto_5
.end method

.method public hasThumbnail()Z
    .registers 2

    .prologue
    .line 1407
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public saveAttributes()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1371
    iget-boolean v6, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-nez v6, :cond_c

    .line 1372
    new-instance v6, Ljava/io/IOException;

    const-string v7, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1376
    :cond_c
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v6

    iput-object v6, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1378
    const/4 v5, 0x0

    .line 1380
    .local v5, "tempFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1381
    .restart local v5    # "tempFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1382
    .local v2, "originalFile":Ljava/io/File;
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 1383
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could\'nt rename to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1386
    :cond_57
    const/4 v0, 0x0

    .line 1387
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 1390
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_59
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_75

    .line 1391
    .end local v0    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_5e
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_80

    .line 1392
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_65
    invoke-direct {p0, v1, v4}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_83

    .line 1394
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1395
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1396
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1400
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    .line 1401
    return-void

    .line 1394
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_75
    move-exception v6

    :goto_76
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1395
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1396
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw v6

    .line 1394
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_80
    move-exception v6

    move-object v0, v1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_76

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_83
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_76
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 27
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1161
    if-eqz p2, :cond_93

    sget-object v3, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1162
    const-string v3, "GPSTimeStamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 1163
    sget-object v3, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 1164
    .local v19, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 1165
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    .end local v19    # "m":Ljava/util/regex/Matcher;
    :cond_4a
    :goto_4a
    return-void

    .line 1168
    .restart local v19    # "m":Ljava/util/regex/Matcher;
    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1181
    .end local v19    # "m":Ljava/util/regex/Matcher;
    :cond_93
    :goto_93
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_94
    sget-object v3, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v15, v3, :cond_4a

    .line 1182
    const/4 v3, 0x4

    if-ne v15, v3, :cond_ed

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v3, :cond_ed

    .line 1181
    :cond_a2
    :goto_a2
    add-int/lit8 v15, v15, 0x1

    goto :goto_94

    .line 1172
    .end local v15    # "i":I
    :cond_a5
    :try_start_a5
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 1173
    .local v10, "doubleValue":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v10

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/10000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c2
    .catch Ljava/lang/NumberFormatException; {:try_start_a5 .. :try_end_c2} :catch_c4

    move-result-object p2

    goto :goto_93

    .line 1174
    .end local v10    # "doubleValue":D
    :catch_c4
    move-exception v12

    .line 1175
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    .line 1185
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "i":I
    :cond_ed
    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 1186
    .local v21, "obj":Ljava/lang/Object;
    if-eqz v21, :cond_a2

    .line 1187
    if-nez p2, :cond_107

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    :cond_107
    move-object/from16 v13, v21

    .line 1191
    check-cast v13, Landroid/media/ExifInterface$ExifTag;

    .line 1192
    .local v13, "exifTag":Landroid/media/ExifInterface$ExifTag;
    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    .line 1194
    .local v14, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_127

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_146

    .line 1195
    :cond_127
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 1212
    .local v2, "dataFormat":I
    :goto_129
    packed-switch v2, :pswitch_data_3c2

    .line 1287
    :pswitch_12c
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    .line 1196
    .end local v2    # "dataFormat":I
    :cond_146
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_166

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_163

    iget v4, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_166

    .line 1198
    :cond_163
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    .restart local v2    # "dataFormat":I
    goto :goto_129

    .line 1199
    .end local v2    # "dataFormat":I
    :cond_166
    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_175

    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_175

    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_178

    .line 1202
    :cond_175
    iget v2, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    .restart local v2    # "dataFormat":I
    goto :goto_129

    .line 1204
    .end local v2    # "dataFormat":I
    :cond_178
    const-string v4, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Given tag ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") value didn\'t match with one of expected "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "formats: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v6, v13, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1e2

    const-string v3, ""

    :goto_1a8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (guess: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1fc

    const-string v3, ""

    :goto_1cf
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    :cond_1e2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v7, v13, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a8

    :cond_1fc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v7, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1cf

    .line 1214
    .restart local v2    # "dataFormat":I
    :pswitch_21c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a2

    .line 1219
    :pswitch_22d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    invoke-static/range {p2 .. p2}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a2

    .line 1223
    :pswitch_23e
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1224
    .local v23, "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 1225
    .local v16, "intArray":[I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_24f
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_261

    .line 1226
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    .line 1225
    add-int/lit8 v17, v17, 0x1

    goto :goto_24f

    .line 1228
    :cond_261
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a2

    .line 1233
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_278
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1234
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 1235
    .restart local v16    # "intArray":[I
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_289
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_29b

    .line 1236
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v16, v17

    .line 1235
    add-int/lit8 v17, v17, 0x1

    goto :goto_289

    .line 1238
    :cond_29b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a2

    .line 1243
    .end local v16    # "intArray":[I
    .end local v17    # "j":I
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_2b2
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1244
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [J

    move-object/from16 v18, v0

    .line 1245
    .local v18, "longArray":[J
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_2c3
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_2d5

    .line 1246
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v18, v17

    .line 1245
    add-int/lit8 v17, v17, 0x1

    goto :goto_2c3

    .line 1248
    :cond_2d5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a2

    .line 1253
    .end local v17    # "j":I
    .end local v18    # "longArray":[J
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_2ec
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1254
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v22, v0

    .line 1255
    .local v22, "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_2fd
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_325

    .line 1256
    aget-object v3, v23, v17

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1257
    .local v20, "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    aput-object v3, v22, v17

    .line 1255
    add-int/lit8 v17, v17, 0x1

    goto :goto_2fd

    .line 1260
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_325
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a2

    .line 1265
    .end local v17    # "j":I
    .end local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_33c
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1266
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v22, v0

    .line 1267
    .restart local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_34d
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_375

    .line 1268
    aget-object v3, v23, v17

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1269
    .restart local v20    # "numbers":[Ljava/lang/String;
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v6, v20, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    aput-object v3, v22, v17

    .line 1267
    add-int/lit8 v17, v17, 0x1

    goto :goto_34d

    .line 1272
    .end local v20    # "numbers":[Ljava/lang/String;
    :cond_375
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a2

    .line 1277
    .end local v17    # "j":I
    .end local v22    # "rationalArray":[Landroid/media/ExifInterface$Rational;
    .end local v23    # "values":[Ljava/lang/String;
    :pswitch_38c
    const-string v3, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1278
    .restart local v23    # "values":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v3, v0

    new-array v9, v3, [D

    .line 1279
    .local v9, "doubleArray":[D
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_39b
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_3ad

    .line 1280
    aget-object v3, v23, v17

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v9, v17

    .line 1279
    add-int/lit8 v17, v17, 0x1

    goto :goto_39b

    .line 1282
    :cond_3ad
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v4}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a2

    .line 1212
    :pswitch_data_3c2
    .packed-switch 0x1
        :pswitch_21c
        :pswitch_22d
        :pswitch_23e
        :pswitch_2b2
        :pswitch_2ec
        :pswitch_12c
        :pswitch_22d
        :pswitch_12c
        :pswitch_278
        :pswitch_33c
        :pswitch_12c
        :pswitch_38c
    .end packed-switch
.end method
