.class public abstract Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.super Ljava/lang/Object;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/AbstractInputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractInputMethodImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/AbstractInputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/inputmethod/InputMethod$SessionCallback;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputMethod$SessionCallback;->sessionCreated(Landroid/view/inputmethod/InputMethodSession;)V

    .line 65
    return-void
.end method

.method public revokeSession(Landroid/view/inputmethod/InputMethodSession;)V
    .locals 2
    .param p1, "session"    # Landroid/view/inputmethod/InputMethodSession;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    check-cast p1, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    .end local p1    # "session":Landroid/view/inputmethod/InputMethodSession;
    invoke-virtual {p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->revokeSelf()V

    .line 95
    :goto_0
    return-void

    .line 92
    .restart local p1    # "session":Landroid/view/inputmethod/InputMethodSession;
    :cond_0
    const-string v0, "AbstractInputMethodSessionImpl"

    const-string v1, "[FXN.ASD] revokeSessionEnabled ERROR, session is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V
    .locals 2
    .param p1, "session"    # Landroid/view/inputmethod/InputMethodSession;
    .param p2, "enabled"    # Z

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    check-cast p1, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;

    .end local p1    # "session":Landroid/view/inputmethod/InputMethodSession;
    invoke-virtual {p1, p2}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->setEnabled(Z)V

    .line 80
    :goto_0
    return-void

    .line 77
    .restart local p1    # "session":Landroid/view/inputmethod/InputMethodSession;
    :cond_0
    const-string v0, "AbstractInputMethodSessionImpl"

    const-string v1, "[FXN.ASD] setSessionEnabled ERROR, session is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
