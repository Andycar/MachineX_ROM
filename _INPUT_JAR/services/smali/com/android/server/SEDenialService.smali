.class public Lcom/android/server/SEDenialService;
.super Landroid/service/ISEDenialService$Stub;
.source "SEDenialService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEDenialService$AuditFileObserver;
    }
.end annotation


# static fields
.field private static final AASA_LOG_FILE:Ljava/lang/String; = "AASA_LOG_FILE"

.field private static final AASA_NOTIFICATION:Ljava/lang/String; = "samsung.intent.action.knox.AASA_NOTIFICATION"

.field private static final AASA_OLD:Ljava/lang/String; = "AASA.old"

.field private static final AMS_LOG_FILE:Ljava/lang/String; = "AMS_LOG_FILE"

.field private static final AMS_NOTIFICATION:Ljava/lang/String; = "samsung.intent.action.knox.AMS_NOTIFICATION"

.field private static final AMS_OLD:Ljava/lang/String; = "ams.old"

.field private static final AUDIT_OLD:Ljava/lang/String; = "audit.old"

.field private static final AUDIT_PATH:Ljava/lang/String; = "/data/misc/audit/"

.field private static final DENIAL_LOG_FILE:Ljava/lang/String; = "DENIAL_LOG_FILE"

.field private static final DENIAL_NOTIFICATION:Ljava/lang/String; = "samsung.intent.action.knox.DENIAL_NOTIFICATION"

.field private static final IS_NOTIFICATION:Ljava/lang/String; = "isNotification"

.field private static final SECURITY_LOG_AGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final SELINUX_DENIAL:Ljava/lang/String; = "audit.ondenial"

.field private static final TAG:Ljava/lang/String; = "SecurityLogAgent:SEDenialService"


# instance fields
.field private auditObserver:Lcom/android/server/SEDenialService$AuditFileObserver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/service/ISEDenialService$Stub;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "SecurityLogAgent:SEDenialService"

    const-string v1, "Started FileObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lcom/android/server/SEDenialService$AuditFileObserver;

    const-string v1, "/data/misc/audit/"

    const/16 v2, 0x8a

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/SEDenialService$AuditFileObserver;-><init>(Lcom/android/server/SEDenialService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SEDenialService;->auditObserver:Lcom/android/server/SEDenialService$AuditFileObserver;

    .line 57
    iget-object v0, p0, Lcom/android/server/SEDenialService;->auditObserver:Lcom/android/server/SEDenialService$AuditFileObserver;

    invoke-virtual {v0}, Lcom/android/server/SEDenialService$AuditFileObserver;->startWatching()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SEDenialService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SEDenialService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;

    return-object v0
.end method
