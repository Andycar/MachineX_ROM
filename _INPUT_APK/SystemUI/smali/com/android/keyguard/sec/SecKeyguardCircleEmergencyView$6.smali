.class synthetic Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;
.super Ljava/lang/Object;
.source "SecKeyguardCircleEmergencyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 303
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->values()[Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    :try_start_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->SWIPE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
