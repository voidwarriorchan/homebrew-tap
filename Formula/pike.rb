# Generated for each release; edits here are overwritten by the next.
class Pike < Formula
  desc "Pi coding agent with a set of extensions built in, as one executable"
  homepage "https://github.com/voidwarriorchan/pike"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.2/pike-darwin-arm64.tar.gz"
      sha256 "10ebfb4d12f16d540924cc8654abb528d6103bca888d037fc96a4aee2f1c3f1e"
    end
    on_intel do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.2/pike-darwin-x64.tar.gz"
      sha256 "e2e9e338a00e0ef453944bbaa06c47cce3f9431a2151500bfec30de58488d8bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.2/pike-linux-arm64.tar.gz"
      sha256 "d25512bd7143b80b0b6431c5c31614cc11b00af895c94e22f5cef08ea51d7fab"
    end
    on_intel do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.2/pike-linux-x64.tar.gz"
      sha256 "8377b97fc1c2d272ce742498452eb149a003b9be21e6ecbc2afc22be17c78e1d"
    end
  end

  def install
    (libexec/"pike").install Dir["*"]
    (libexec/"pike/update-command").write "brew upgrade #{full_name}\n"
    bin.install_symlink libexec/"pike/pike"
  end

  test do
    assert_match "pike #{version}", shell_output("#{bin}/pike --version")
  end
end
