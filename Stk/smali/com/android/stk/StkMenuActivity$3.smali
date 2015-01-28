.class Lcom/android/stk/StkMenuActivity$3;
.super Ljava/lang/Object;
.source "StkMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/stk/StkMenuActivity$3;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, helpVisible:Z
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity$3;->this$0:Lcom/android/stk/StkMenuActivity;

    #getter for: Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;
    invoke-static {v1}, Lcom/android/stk/StkMenuActivity;->access$400(Lcom/android/stk/StkMenuActivity;)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity$3;->this$0:Lcom/android/stk/StkMenuActivity;

    #getter for: Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;
    invoke-static {v1}, Lcom/android/stk/StkMenuActivity;->access$400(Lcom/android/stk/StkMenuActivity;)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    iget-boolean v0, v1, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 297
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 298
    const/4 v1, 0x3

    const v2, 0x7f060035

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 300
    :cond_1
    return-void
.end method
