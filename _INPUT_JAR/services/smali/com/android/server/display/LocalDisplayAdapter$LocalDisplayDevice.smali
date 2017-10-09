.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayDevice"
.end annotation


# instance fields
.field private final mBuiltInDisplayId:I

.field private final mDefaultPhysicalDisplayInfo:I

.field private mHavePendingChanges:Z

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mLastRequestedRefreshRate:F

.field private final mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field private mRefreshRateConfigIndices:[I

.field private mState:I

.field private mSupportedRefreshRates:[F

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)V
    .registers 8
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "builtInDisplayId"    # I
    .param p4, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p5, "activeDisplayInfo"    # I

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 144
    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 145
    new-instance v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v1, p4, p5

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 147
    iput p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultPhysicalDisplayInfo:I

    .line 148
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-direct {p0, p4, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateSupportedRefreshRatesLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 149
    return-void
.end method

.method private updateDeviceInfoLocked()V
    .registers 3

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 282
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 283
    return-void
.end method

.method private updateSupportedRefreshRatesLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .registers 11
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activePhys"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    const/4 v7, 0x0

    .line 288
    array-length v0, p1

    .line 289
    .local v0, "N":I
    const/4 v2, 0x0

    .line 290
    .local v2, "idx":I
    new-array v5, v0, [F

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    .line 291
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    .line 292
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "idx":I
    .local v3, "idx":I
    :goto_d
    if-ge v1, v0, :cond_45

    .line 293
    aget-object v4, p1, v1

    .line 294
    .local v4, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    if-ne v5, v6, :cond_58

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    if-ne v5, v6, :cond_58

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_58

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_58

    iget v5, p2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_58

    .line 299
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    iget v6, v4, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    aput v6, v5, v3

    .line 300
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    aput v1, v5, v3

    .line 292
    :goto_41
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_d

    .line 303
    .end local v4    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_45
    if-eq v3, v0, :cond_57

    .line 304
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    invoke-static {v5, v7, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    .line 305
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    invoke-static {v5, v7, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    .line 307
    :cond_57
    return-void

    .restart local v4    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_58
    move v2, v3

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_41
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_a

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 169
    :cond_a
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBuiltInDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 173
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_95

    .line 174
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 175
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 176
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 177
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 178
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    .line 179
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget-wide v2, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 180
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget-wide v2, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 181
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 185
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget-boolean v0, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-eqz v0, :cond_4d

    .line 186
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 190
    :cond_4d
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    if-nez v0, :cond_98

    .line 191
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 195
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 196
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 197
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 198
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 199
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 221
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0

    .line 201
    :cond_98
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 202
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 203
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 206
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v2, v2, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 210
    const-string/jumbo v0, "portrait"

    const-string/jumbo v1, "persist.demo.hdmirotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 211
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 216
    :cond_df
    const-string/jumbo v0, "persist.demo.hdmirotates"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 217
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_95
.end method

.method public requestDisplayStateLocked(I)Ljava/lang/Runnable;
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 226
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    if-eq v0, p1, :cond_1b

    .line 227
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBuiltInDisplayId:I

    .line 228
    .local v3, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v4

    .line 229
    .local v4, "token":Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v5

    .line 230
    .local v5, "mode":I
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 231
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 236
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IILandroid/os/IBinder;I)V

    .line 249
    .end local v3    # "displayId":I
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v5    # "mode":I
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public requestRefreshRateLocked(F)V
    .registers 8
    .param p1, "refreshRate"    # F

    .prologue
    .line 254
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastRequestedRefreshRate:F

    cmpl-float v3, v3, p1

    if-nez v3, :cond_7

    .line 270
    :goto_6
    return-void

    .line 257
    :cond_7
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastRequestedRefreshRate:F

    .line 258
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_49

    .line 259
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    array-length v0, v3

    .line 260
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_2b

    .line 261
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    aget v3, v3, v2

    cmpl-float v3, p1, v3

    if-nez v3, :cond_28

    .line 262
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRefreshRateConfigIndices:[I

    aget v1, v3, v2

    .line 263
    .local v1, "configIndex":I
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    goto :goto_6

    .line 260
    .end local v1    # "configIndex":I
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 267
    :cond_2b
    const-string v3, "LocalDisplayAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested refresh rate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unsupported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultPhysicalDisplayInfo:I

    invoke-static {v3, v4}, Landroid/view/SurfaceControl;->setActiveConfig(Landroid/os/IBinder;I)Z

    goto :goto_6
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I)Z
    .registers 6
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"    # I

    .prologue
    const/4 v1, 0x1

    .line 153
    aget-object v0, p1, p2

    .line 154
    .local v0, "newPhys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 155
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 156
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhys:Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateSupportedRefreshRatesLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 157
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 160
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method
