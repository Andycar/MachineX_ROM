.class public final enum Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final cacNumeric:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 311
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0a08a9

    const v4, 0x7f0a08ab

    const v5, 0x7f0a0293

    const v6, 0x7f0a02b3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 316
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x1

    const v3, 0x7f0a08ac

    const v4, 0x7f0a08ae

    const v5, 0x7f0a0294

    const v6, 0x7f0a02bf

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 321
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x2

    const v3, 0x7f0a08af

    const v4, 0x7f0a08b0

    const v5, 0x7f0a0298

    const v6, 0x7f0a02b3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 309
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .param p3, "hintInAlpha"    # I
    .param p4, "hintInNumeric"    # I
    .param p5, "hintCacNumeric"    # I
    .param p6, "nextButtonText"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 330
    iput p3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 331
    iput p4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 332
    iput p5, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->cacNumeric:I

    .line 333
    iput p6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    .line 334
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 309
    const-class v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method