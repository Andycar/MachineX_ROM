.class public Lcom/samsung/android/service/gesture/GestureEvent;
.super Ljava/lang/Object;
.source "GestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/service/gesture/GestureEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final GESTURE_EVENT_APPROACH:I = 0x2

.field public static final GESTURE_EVENT_HANDSHAKE:I = 0x6

.field public static final GESTURE_EVENT_HOVER:I = 0x5

.field public static final GESTURE_EVENT_SWEEP_DOWN:I = 0x4

.field public static final GESTURE_EVENT_SWEEP_LEFT:I = 0x1

.field public static final GESTURE_EVENT_SWEEP_RIGHT:I = 0x0

.field public static final GESTURE_EVENT_SWEEP_UP:I = 0x3

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static mPool:Lcom/samsung/android/service/gesture/GestureEvent;

.field private static mPoolSize:I

.field private static final mPoolSync:Lcom/samsung/android/service/gesture/GestureEvent;


# instance fields
.field private mEvent:I

.field private mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

.field private mProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    new-instance v0, Lcom/samsung/android/service/gesture/GestureEvent;

    invoke-direct {v0}, Lcom/samsung/android/service/gesture/GestureEvent;-><init>()V

    sput-object v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSync:Lcom/samsung/android/service/gesture/GestureEvent;

    .line 99
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    .line 201
    new-instance v0, Lcom/samsung/android/service/gesture/GestureEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/service/gesture/GestureEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/service/gesture/GestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/service/gesture/GestureEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 121
    return-void
.end method

.method public static obtain()Lcom/samsung/android/service/gesture/GestureEvent;
    .registers 3

    .prologue
    .line 219
    sget-object v2, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSync:Lcom/samsung/android/service/gesture/GestureEvent;

    monitor-enter v2

    .line 220
    :try_start_3
    sget-object v1, Lcom/samsung/android/service/gesture/GestureEvent;->mPool:Lcom/samsung/android/service/gesture/GestureEvent;

    if-eqz v1, :cond_18

    .line 221
    sget-object v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPool:Lcom/samsung/android/service/gesture/GestureEvent;

    .line 222
    .local v0, "e":Lcom/samsung/android/service/gesture/GestureEvent;
    iget-object v1, v0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    sput-object v1, Lcom/samsung/android/service/gesture/GestureEvent;->mPool:Lcom/samsung/android/service/gesture/GestureEvent;

    .line 223
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    .line 224
    sget v1, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    .line 225
    monitor-exit v2

    .line 228
    .end local v0    # "e":Lcom/samsung/android/service/gesture/GestureEvent;
    :goto_17
    return-object v0

    .line 227
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 228
    new-instance v0, Lcom/samsung/android/service/gesture/GestureEvent;

    invoke-direct {v0}, Lcom/samsung/android/service/gesture/GestureEvent;-><init>()V

    goto :goto_17

    .line 227
    .restart local v0    # "e":Lcom/samsung/android/service/gesture/GestureEvent;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public static obtain(Lcom/samsung/android/service/gesture/GestureEvent;)Lcom/samsung/android/service/gesture/GestureEvent;
    .registers 3
    .param p0, "orig"    # Lcom/samsung/android/service/gesture/GestureEvent;

    .prologue
    .line 236
    invoke-static {}, Lcom/samsung/android/service/gesture/GestureEvent;->obtain()Lcom/samsung/android/service/gesture/GestureEvent;

    move-result-object v0

    .line 237
    .local v0, "e":Lcom/samsung/android/service/gesture/GestureEvent;
    iget v1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    iput v1, v0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    .line 238
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    iput-object v1, v0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    .line 241
    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    .line 198
    return-void
.end method


# virtual methods
.method clearForRecycle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    .line 265
    iput-object v1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    .line 266
    iput-object v1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    .line 267
    return-void
.end method

.method public describeContents()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/service/gesture/GestureEvent;->clearForRecycle()V

    .line 251
    sget-object v1, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSync:Lcom/samsung/android/service/gesture/GestureEvent;

    monitor-enter v1

    .line 252
    :try_start_6
    sget v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_18

    .line 253
    sget-object v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPool:Lcom/samsung/android/service/gesture/GestureEvent;

    iput-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    .line 254
    sput-object p0, Lcom/samsung/android/service/gesture/GestureEvent;->mPool:Lcom/samsung/android/service/gesture/GestureEvent;

    .line 255
    sget v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    .line 257
    :cond_18
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setEvent(I)V
    .registers 2
    .param p1, "event"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    .line 143
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return-void
.end method
