.class public final enum Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;
.super Ljava/lang/Enum;
.source "SecKeyguardCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

.field public static final enum DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

.field public static final enum PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

.field public static final enum SWIPE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    const-string v1, "PRESSED"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    const-string v1, "SWIPE"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->SWIPE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->SWIPE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->$VALUES:[Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->$VALUES:[Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {v0}, [Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    return-object v0
.end method
