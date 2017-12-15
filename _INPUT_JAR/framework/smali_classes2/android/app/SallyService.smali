.class public Landroid/app/SallyService;
.super Landroid/app/Service;
.source "SallyService.java"

# interfaces
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "Sally Service"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDecor:Landroid/view/View;

.field private mWindow:Landroid/view/Window;

.field private mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 304
    const-string v0, "Sally Service"

    const-string v1, "addContentView() view, params"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    return-void
.end method

.method public addWindow(Landroid/view/View;III)Landroid/view/Window;
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "windowType"    # I

    .prologue
    .line 393
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SallyService;->addWindow(Landroid/view/View;IIII)Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public addWindow(Landroid/view/View;IIII)Landroid/view/Window;
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "windowType"    # I
    .param p5, "windowFlags"    # I

    .prologue
    const/4 v6, 0x0

    .line 400
    const-string v7, "Sally Service"

    const-string v8, "addWindow view"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v5, 0x0

    .line 402
    .local v5, "toGo":Z
    const/4 v1, 0x0

    .line 407
    .local v1, "exception":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Landroid/app/SallyService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 409
    .local v4, "newWindowAttributes":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    if-nez v7, :cond_14

    move-object v3, v6

    .line 456
    :cond_13
    :goto_13
    return-object v3

    .line 412
    :cond_14
    iget-object v7, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v3

    .line 414
    .local v3, "newWindow":Landroid/view/Window;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 417
    if-eqz v3, :cond_95

    .line 418
    iget-object v7, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v3, v7, v6, v6}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 419
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 420
    iput p3, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 421
    iput p4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 422
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v6, p5

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 423
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 425
    invoke-virtual {v3, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 426
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 428
    .local v2, "newDecor":Landroid/view/View;
    if-eqz v2, :cond_47

    .line 429
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 432
    :cond_40
    :try_start_40
    iget-object v6, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_45} :catch_4a

    .line 447
    :goto_45
    if-nez v5, :cond_40

    .line 449
    :cond_47
    :goto_47
    if-eqz v1, :cond_13

    .line 450
    throw v1

    .line 434
    :catch_4a
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    if-eqz v5, :cond_50

    .line 436
    const/4 v5, 0x0

    .line 437
    move-object v1, v0

    .line 438
    goto :goto_47

    .line 441
    :cond_50
    const-string v6, "Sally Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View Problem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "w: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "h: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "t: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v5, 0x1

    .line 444
    const-wide/16 v6, 0x3e8

    :try_start_8f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_45

    .line 445
    :catch_93
    move-exception v6

    goto :goto_45

    .line 453
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "newDecor":Landroid/view/View;
    :cond_95
    const-string v7, "Sally Service"

    const-string v8, "failed to create new window"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 456
    goto/16 :goto_13
.end method

.method public createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 5

    .prologue
    .line 358
    const-string v2, "Sally Service"

    const-string v3, "createLayoutParams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/16 v1, 0x7d2

    .line 363
    .local v1, "windowType":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1040340

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 370
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 371
    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    return-object v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 590
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 591
    const/4 v0, 0x1

    .line 593
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 546
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 547
    const/4 v0, 0x1

    .line 549
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_14
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9

    :cond_19
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 557
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 558
    const/4 v0, 0x1

    .line 560
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 568
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 569
    const/4 v0, 0x1

    .line 571
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 580
    const/4 v0, 0x1

    .line 582
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 315
    const-string v0, "Sally Service"

    const-string v1, "findViewById()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    .prologue
    .line 327
    const-string v0, "Sally Service"

    const-string v1, "getAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Landroid/app/SallyService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 3

    .prologue
    .line 385
    const-string v0, "Sally Service"

    const-string v1, "getWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 714
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 707
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 670
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 213
    const-string v0, "Sally Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public onContentChanged()V
    .registers 1

    .prologue
    .line 656
    return-void
.end method

.method public onCreate()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 102
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 103
    const-string v3, "Sally Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/app/SallyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    .line 106
    iput-object p0, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    .line 109
    :try_start_29
    invoke-virtual {p0}, Landroid/app/SallyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 110
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_5d

    .line 111
    invoke-virtual {p0}, Landroid/app/SallyService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 112
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_5d

    .line 113
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    .line 114
    const-string v3, "Sally Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loaded theme = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_5d} :catch_82

    .line 121
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Landroid/app/SallyService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Landroid/app/SallyService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 122
    iget-object v3, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v3

    iput-object v3, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    .line 124
    iget-object v3, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_81

    .line 125
    iget-object v3, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v3, v4, v6, v6}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 127
    iget-object v3, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 129
    :cond_81
    return-void

    .line 117
    :catch_82
    move-exception v1

    .line 118
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5d
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 202
    const-string v0, "Sally Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iput-object v3, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    .line 204
    iput-object v3, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    .line 205
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 677
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 519
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 520
    invoke-virtual {p0}, Landroid/app/SallyService;->stopService()V

    .line 521
    const/4 v0, 0x1

    .line 524
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 684
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 165
    const-string v3, "Sally Service"

    const-string v4, "onStartCommand()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_15

    .line 168
    iget-object v3, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Landroid/app/SallyService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 171
    :cond_15
    iget-object v3, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    .line 172
    iget-object v3, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_49

    .line 173
    iget-object v3, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v3, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 175
    .local v1, "l":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_42

    .line 176
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 177
    .local v2, "nl":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 178
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 179
    move-object v1, v2

    .line 183
    .end local v2    # "nl":Landroid/view/WindowManager$LayoutParams;
    :cond_42
    :try_start_42
    iget-object v3, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_49} :catch_4b

    .line 189
    .end local v1    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_49
    :goto_49
    const/4 v3, 0x1

    return v3

    .line 184
    .restart local v1    # "l":Landroid/view/WindowManager$LayoutParams;
    :catch_4b
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    invoke-virtual {p0}, Landroid/app/SallyService;->stopSelf()V

    goto :goto_49
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 649
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 663
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 699
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeWindow(Landroid/view/Window;)Z
    .registers 4
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 464
    const-string v0, "Sally Service"

    const-string/jumbo v1, "removeWindow window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    if-eqz p1, :cond_15

    .line 467
    iget-object v0, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 468
    const/4 v0, 0x1

    .line 471
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 343
    const-string v0, "Sally Service"

    const-string/jumbo v1, "setAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 345
    return-void
.end method

.method public setContentView(I)V
    .registers 4
    .param p1, "layoutResID"    # I

    .prologue
    .line 253
    const-string v0, "Sally Service"

    const-string/jumbo v1, "setContentView() layoutResID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 255
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 274
    const-string v0, "Sally Service"

    const-string/jumbo v1, "setContentView() view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 276
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 291
    const-string v0, "Sally Service"

    const-string/jumbo v1, "setContentView() view, params"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    return-void
.end method

.method public stopService()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 224
    iget-object v0, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    .line 228
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/SallyService;->stopForeground(Z)V

    .line 229
    invoke-virtual {p0}, Landroid/app/SallyService;->stopSelf()V

    .line 230
    return-void
.end method
