.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$OnChronometerTickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Chronometer"

.field private static final TICK_WHAT:I = 0x2


# instance fields
.field private mBase:J

.field private mFormat:Ljava/lang/String;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mFormatterArgs:[Ljava/lang/Object;

.field private mFormatterLocale:Ljava/util/Locale;

.field private mHandler:Landroid/os/Handler;

.field private mLogged:Z

.field private mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private mRecycle:Ljava/lang/StringBuilder;

.field private mRunning:Z

.field private mStarted:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    .line 268
    new-instance v1, Landroid/widget/Chronometer$1;

    invoke-direct {v1, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    .line 104
    sget-object v1, Lcom/android/internal/R$styleable;->Chronometer:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Landroid/widget/Chronometer;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Chronometer;

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/Chronometer;J)V
    .registers 4
    .param p0, "x0"    # Landroid/widget/Chronometer;
    .param p1, "x1"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    .line 114
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 115
    return-void
.end method

.method private updateRunning()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    .line 255
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Landroid/widget/Chronometer;->mStarted:Z

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    .line 256
    .local v0, "running":Z
    :goto_a
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRunning:Z

    if-eq v0, v1, :cond_29

    .line 257
    if-eqz v0, :cond_2c

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/widget/Chronometer;->updateText(J)V

    .line 259
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 260
    iget-object v1, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    :goto_27
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    .line 266
    :cond_29
    return-void

    .line 255
    .end local v0    # "running":Z
    :cond_2a
    const/4 v0, 0x0

    goto :goto_a

    .line 262
    .restart local v0    # "running":Z
    :cond_2c
    iget-object v1, p0, Landroid/widget/Chronometer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_27
.end method

.method private declared-synchronized updateText(J)V
    .registers 12
    .param p1, "now"    # J

    .prologue
    .line 229
    monitor-enter p0

    :try_start_1
    iget-wide v6, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v2, p1, v6

    .line 230
    .local v2, "seconds":J
    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 231
    iget-object v5, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    invoke-static {v5, v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz v5, :cond_47

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 235
    .local v1, "loc":Ljava/util/Locale;
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    if-eqz v5, :cond_22

    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 236
    :cond_22
    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    .line 237
    new-instance v5, Ljava/util/Formatter;

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v5, v6, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    .line 239
    :cond_2d
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 240
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_6f

    .line 242
    :try_start_38
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 243
    iget-object v5, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_46
    .catch Ljava/util/IllegalFormatException; {:try_start_38 .. :try_end_46} :catch_4c
    .catchall {:try_start_38 .. :try_end_46} :catchall_6f

    move-result-object v4

    .line 251
    .end local v1    # "loc":Ljava/util/Locale;
    :cond_47
    :goto_47
    :try_start_47
    invoke-virtual {p0, v4}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_6f

    .line 252
    monitor-exit p0

    return-void

    .line 244
    .restart local v1    # "loc":Ljava/util/Locale;
    :catch_4c
    move-exception v0

    .line 245
    .local v0, "ex":Ljava/util/IllegalFormatException;
    :try_start_4d
    iget-boolean v5, p0, Landroid/widget/Chronometer;->mLogged:Z

    if-nez v5, :cond_47

    .line 246
    const-string v5, "Chronometer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal format string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Chronometer;->mLogged:Z
    :try_end_6e
    .catchall {:try_start_4d .. :try_end_6e} :catchall_6f

    goto :goto_47

    .line 229
    .end local v0    # "ex":Ljava/util/IllegalFormatException;
    .end local v1    # "loc":Ljava/util/Locale;
    .end local v2    # "seconds":J
    .end local v4    # "text":Ljava/lang/String;
    :catchall_6f
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method dispatchChronometerTick()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    .line 282
    :cond_9
    return-void
.end method

.method public getBase()J
    .registers 3

    .prologue
    .line 133
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    return-wide v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 218
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 219
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 287
    const-class v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 293
    const-class v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 224
    if-nez p1, :cond_c

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 225
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 226
    return-void

    .line 224
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setBase(J)V
    .registers 6
    .param p1, "base"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 124
    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    .line 125
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 127
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    .line 150
    if-eqz p1, :cond_15

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_15

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 153
    :cond_15
    return-void
.end method

.method public setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/Chronometer$OnChronometerTickListener;

    .prologue
    .line 168
    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 169
    return-void
.end method

.method public setStarted(Z)V
    .registers 2
    .param p1, "started"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 210
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 211
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 212
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 189
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 190
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 201
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 202
    return-void
.end method
