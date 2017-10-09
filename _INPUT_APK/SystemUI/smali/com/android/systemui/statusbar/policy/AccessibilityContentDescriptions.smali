.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    return-void

    .line 13
    :array_0
    .array-data 4
        0x7f0d0225
        0x7f0d0226
        0x7f0d0227
        0x7f0d0228
        0x7f0d022b
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f0d022c
        0x7f0d022d
        0x7f0d022e
        0x7f0d022f
        0x7f0d0230
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x7f0d0232
        0x7f0d0233
        0x7f0d0234
        0x7f0d0235
        0x7f0d0236
    .end array-data

    .line 36
    :array_3
    .array-data 4
        0x7f0d0239
        0x7f0d023a
        0x7f0d023b
        0x7f0d023c
        0x7f0d023d
    .end array-data

    .line 45
    :array_4
    .array-data 4
        0x7f0d0225
        0x7f0d0226
        0x7f0d0227
        0x7f0d0228
        0x7f0d0229
        0x7f0d022b
    .end array-data

    .line 54
    :array_5
    .array-data 4
        0x7f0d0225
        0x7f0d0226
        0x7f0d0227
        0x7f0d0228
        0x7f0d0229
        0x7f0d022a
        0x7f0d022b
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
