.class public final Landroid/app/usage/UsageEvents$Event;
.super Ljava/lang/Object;
.source "UsageEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static final CONFIGURATION_CHANGE:I = 0x5

.field public static final CONTINUE_PREVIOUS_DAY:I = 0x4

.field public static final END_OF_DAY:I = 0x3

.field public static final MOVE_TO_BACKGROUND:I = 0x2

.field public static final MOVE_TO_FOREGROUND:I = 0x1

.field public static final NONE:I


# instance fields
.field public mClass:Ljava/lang/String;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mEventType:I

.field public mPackage:Ljava/lang/String;

.field public mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getEventType()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-wide v0
.end method
