.class public Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
.super Ljava/lang/Object;
.source "StackScrollState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/StackScrollState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation


# static fields
.field public static final LOCATION_BOTTOM_STACK_HIDDEN:I = 0x20

.field public static final LOCATION_BOTTOM_STACK_PEEKING:I = 0x10

.field public static final LOCATION_FIRST_CARD:I = 0x1

.field public static final LOCATION_MAIN_AREA:I = 0x8

.field public static final LOCATION_TOP_STACK_HIDDEN:I = 0x2

.field public static final LOCATION_TOP_STACK_PEEKING:I = 0x4

.field public static final LOCATION_UNKNOWN:I


# instance fields
.field alpha:F

.field belowSpeedBump:Z

.field clipTopAmount:I

.field dark:Z

.field dimmed:Z

.field gone:Z

.field height:I

.field hideSensitive:Z

.field location:I

.field notGoneIndex:I

.field scale:F

.field topOverLap:I

.field yTranslation:F

.field zTranslation:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
