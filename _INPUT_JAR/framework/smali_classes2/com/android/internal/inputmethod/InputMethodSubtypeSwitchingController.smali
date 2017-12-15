.class public Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$1;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;,
        Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

.field private final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V
    .registers 3
    .param p1, "settings"    # Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 483
    invoke-virtual {p0, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 484
    return-void
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 3
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "x1"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v0

    return v0
.end method

.method private static calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 3
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 255
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
    .registers 3
    .param p0, "settings"    # Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 5
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-nez v0, :cond_6

    .line 513
    const/4 v0, 0x0

    .line 515
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    goto :goto_5
.end method

.method public getSortedInputMethodAndSubtypeListLocked(ZZZ)Ljava/util/List;
    .registers 5
    .param p1, "showSubtypes"    # Z
    .param p2, "inputShown"    # Z
    .param p3, "isScreenLocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-nez v0, :cond_5

    .line 499
    :goto_4
    return-void

    .line 498
    :cond_5
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_4
.end method

.method public resetCircularListLocked(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;-><init>(Landroid/content/Context;Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    .line 503
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->createFrom(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 505
    return-void
.end method
