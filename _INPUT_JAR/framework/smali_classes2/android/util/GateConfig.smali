.class public final Landroid/util/GateConfig;
.super Ljava/lang/Object;
.source "GateConfig.java"


# static fields
.field private static final DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field private static final DEBUG_LEVEL_LOW:Ljava/lang/String; = "0x4f4c"

.field private static final DEBUG_LEVEL_MID:Ljava/lang/String; = "0x494d"

.field public static final GATE_INTENT_V1_ACTION:Ljava/lang/String; = "com.sec.android.app.GateAgent.GATE_CONFIG"

.field public static final GATE_INTENT_V1_EXTRA_GATE_ENABLED:Ljava/lang/String; = "GATE_ENABLED"

.field public static final GATE_INTENT_V1_EXTRA_LCDTEXT_ENABLED:Ljava/lang/String; = "GATE_LCDTEXT_ENABLED"

.field public static final GATE_INTENT_V1_EXTRA_TRACE_TAG:Ljava/lang/String; = "GATE_TRACE_TAG"

.field public static final GATE_INTENT_V2_ACTION:Ljava/lang/String; = "com.sec.android.gate.GATE"

.field public static final GATE_INTENT_V2_EXTRA_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final GATE_V1_SYS_PROP_GATE_ENABLED:Ljava/lang/String; = "service.gate.enabled"

.field public static final GATE_V1_SYS_PROP_LCDTEXT_ENABLED:Ljava/lang/String; = "service.gate.lcdtexton"

.field public static final GATE_V1_SYS_PROP_TRACE_FILTER:Ljava/lang/String; = "service.gate.filter"

.field public static final GATE_V2_SYS_PROP_GATE_ENABLED:Ljava/lang/String; = "service.gate.enabled"

.field public static final GATE_V2_SYS_PROP_LCDTEXT_ENABLED:Ljava/lang/String; = "service.gate.lcdtexton"

.field public static final GATE_VERSION_1:I = 0x1

.field public static final GATE_VERSION_2:I = 0x2

.field public static final GATE_VERSION_LATEST:I = 0x2

.field public static final LCDTEXT_INTENT_V2_ACTION:Ljava/lang/String; = "com.sec.android.gate.LCDTEXT"

.field public static final LCDTEXT_INTENT_V2_EXTRA_ENABLED:Ljava/lang/String; = "ENABLED"

.field private static final LOG_TAG:Ljava/lang/String; = "GATE"

.field private static sGateEnabled:Z

.field private static sGateLcdtextEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Landroid/util/GateConfig;->sGateEnabled:Z

    .line 52
    sput-boolean v0, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .registers 3

    .prologue
    .line 74
    const-string/jumbo v1, "ro.debug_level"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "debugLevel":Ljava/lang/String;
    const-string v1, "0x494d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 76
    const-string/jumbo v1, "service.gate.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 78
    :goto_20
    return v1

    :cond_21
    sget-boolean v1, Landroid/util/GateConfig;->sGateEnabled:Z

    goto :goto_20
.end method

.method public static isGateLcdtextEnabled()Z
    .registers 3

    .prologue
    .line 86
    const-string/jumbo v1, "ro.debug_level"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "debugLevel":Ljava/lang/String;
    const-string v1, "0x494d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 88
    const-string/jumbo v1, "service.gate.lcdtexton"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 90
    :goto_20
    return v1

    :cond_21
    sget-boolean v1, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    goto :goto_20
.end method

.method public static setGateEnabled(Z)V
    .registers 4
    .param p0, "gateEnabled"    # Z

    .prologue
    .line 59
    sput-boolean p0, Landroid/util/GateConfig;->sGateEnabled:Z

    .line 61
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GateConfig.setGateEnabled. GATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LCDTEXT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public static setGateLcdtextEnabled(Z)V
    .registers 4
    .param p0, "lcdTextEnabled"    # Z

    .prologue
    .line 65
    sput-boolean p0, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    .line 67
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GateConfig.setGateLcdtextEnabled. GATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LCDTEXT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method
