.class public Landroid/app/Presentation;
.super Landroid/app/Dialog;
.source "Presentation.java"


# static fields
.field private static final MSG_CANCEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Presentation"


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .registers 4
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .registers 7
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "theme"    # I

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-static {p1, p2, p3}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 337
    new-instance v0, Landroid/app/Presentation$2;

    invoke-direct {v0, p0}, Landroid/app/Presentation$2;-><init>(Landroid/app/Presentation;)V

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 357
    new-instance v0, Landroid/app/Presentation$3;

    invoke-direct {v0, p0}, Landroid/app/Presentation$3;-><init>(Landroid/app/Presentation;)V

    iput-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    .line 181
    iput-object p2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    .line 182
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 184
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 185
    invoke-virtual {p0, v2}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Landroid/app/Presentation;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"    # Landroid/app/Presentation;

    .prologue
    .line 143
    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Presentation;)V
    .registers 1
    .param p0, "x0"    # Landroid/app/Presentation;

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayRemoved()V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Presentation;)V
    .registers 1
    .param p0, "x0"    # Landroid/app/Presentation;

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayChanged()V

    return-void
.end method

.method private static createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
    .registers 10
    .param p0, "outerContext"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "theme"    # I

    .prologue
    .line 303
    if-nez p0, :cond_b

    .line 304
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "outerContext must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    :cond_b
    if-nez p1, :cond_15

    .line 307
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "display must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 310
    :cond_15
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 311
    .local v0, "displayContext":Landroid/content/Context;
    if-nez p2, :cond_2d

    .line 312
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 313
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10103c0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 315
    iget p2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 322
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_2d
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerImpl;

    .line 324
    .local v3, "outerWindowManager":Landroid/view/WindowManagerImpl;
    invoke-virtual {v3, p1}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v1

    .line 326
    .local v1, "displayWindowManager":Landroid/view/WindowManagerImpl;
    new-instance v4, Landroid/app/Presentation$1;

    invoke-direct {v4, v0, p2, v1}, Landroid/app/Presentation$1;-><init>(Landroid/content/Context;ILandroid/view/WindowManagerImpl;)V

    return-object v4
.end method

.method private handleDisplayChanged()V
    .registers 2

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    .line 290
    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    move-result v0

    if-nez v0, :cond_c

    .line 291
    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    .line 293
    :cond_c
    return-void
.end method

.method private handleDisplayRemoved()V
    .registers 1

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    .line 279
    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    .line 280
    return-void
.end method

.method private isConfigurationStillValid()Z
    .registers 3

    .prologue
    .line 296
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 297
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 298
    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onDisplayChanged()V
    .registers 1

    .prologue
    .line 275
    return-void
.end method

.method public onDisplayRemoved()V
    .registers 1

    .prologue
    .line 262
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 211
    iget-object v1, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "virtualKey_Intent":Landroid/content/Intent;
    const-string v1, "displayName"

    iget-object v2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v1, "displayID"

    iget-object v2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Landroid/app/Presentation;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    move-result v1

    if-nez v1, :cond_45

    .line 224
    const-string v1, "Presentation"

    const-string v2, "Presentation is being immediately dismissed because the display metrics have changed since it was created."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    :cond_45
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "virtualKey_Intent":Landroid/content/Intent;
    const-string v1, "displayName"

    iget-object v2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v1, "displayID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Landroid/app/Presentation;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    iget-object v1, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 239
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 240
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 250
    return-void
.end method
