.class public Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NfcAdvancedRoutingSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "routingDestAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private CaptionClickListener:Landroid/view/View$OnClickListener;

.field private FocusListener:Landroid/view/View$OnFocusChangeListener;

.field private Id_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Summary:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Title:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p3, "Titledata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "Summarydata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "Idlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    .line 364
    const/high16 v0, -0x80000000

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Title:Ljava/util/ArrayList;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Summary:Ljava/util/ArrayList;

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Id_list:Ljava/util/ArrayList;

    .line 372
    new-instance v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$1;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->CaptionClickListener:Landroid/view/View$OnClickListener;

    .line 379
    new-instance v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter$2;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->FocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 365
    iput-object p2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->mContext:Landroid/content/Context;

    .line 366
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 367
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Title:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 368
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Summary:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 369
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Id_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 370
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 388
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Id_list:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v2, v2, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->currentRoute:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->selectedPos:I

    .line 389
    if-nez p2, :cond_1

    .line 391
    new-instance v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;

    invoke-direct {v0, v3}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;-><init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$1;)V

    .line 392
    .local v0, "holder":Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040134

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 393
    const v1, 0x7f1002a8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 394
    const v1, 0x7f1002a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mSummary:Landroid/widget/TextView;

    .line 395
    const v1, 0x7f1002a7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    .line 396
    const v1, 0x7f1002a6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mAdvanced:Landroid/widget/LinearLayout;

    .line 400
    sget v1, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->selectedPos:I

    if-ne p1, v1, :cond_0

    .line 401
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 405
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 406
    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Title:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Summary:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setId(I)V

    .line 409
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 410
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->access$200(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->CaptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->FocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 414
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mAdvanced:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->CaptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mAdvanced:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->FocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 416
    const-string v1, "NfcRoutingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertView == null :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_1
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 425
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 426
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 427
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 428
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 429
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 430
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 431
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 432
    iput p1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mPosition:I

    .line 434
    return-object p2

    .line 403
    :cond_0
    iget-object v1, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 419
    .end local v0    # "holder":Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;
    :cond_1
    const-string v1, "NfcRoutingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertView != null :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;

    .line 421
    .restart local v0    # "holder":Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;
    iget-object v2, v0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$routingDestAdapter;->Summary:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
