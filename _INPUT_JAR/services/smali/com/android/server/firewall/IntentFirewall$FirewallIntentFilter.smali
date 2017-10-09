.class Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
.super Landroid/content/IntentFilter;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirewallIntentFilter"
.end annotation


# instance fields
.field private final rule:Lcom/android/server/firewall/IntentFirewall$Rule;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .registers 2
    .param p1, "rule"    # Lcom/android/server/firewall/IntentFirewall$Rule;

    .prologue
    .line 490
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 491
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 492
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    return-object v0
.end method
