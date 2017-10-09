.class final enum Lcom/android/keyguard/KeyguardPatternView$OneHandMode;
.super Ljava/lang/Enum;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OneHandMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/KeyguardPatternView$OneHandMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

.field public static final enum Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

.field public static final enum Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    .line 144
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->$VALUES:[Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardPatternView$OneHandMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    const-class v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardPatternView$OneHandMode;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->$VALUES:[Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    return-object v0
.end method
