# Generated for each release; edits here are overwritten by the next.
class Pike < Formula
  desc "Pi coding agent with a set of extensions built in, as one executable"
  homepage "https://github.com/voidwarriorchan/pike"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.3/pike-darwin-arm64.tar.gz"
      sha256 "30e78aeb2b1c120954d2755e42786588c7723982255712b47e58c3ecc01c093d"
    end
    on_intel do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.3/pike-darwin-x64.tar.gz"
      sha256 "ba853f04f40bd863b1e03c3446504328afb828ea6761980f8900aec6d397eaa6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.3/pike-linux-arm64.tar.gz"
      sha256 "97578f0ff034c52e791ee9b9d0a76fbef3c44ea5a8491cbfde21eb4dd38f6446"
    end
    on_intel do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.3/pike-linux-x64.tar.gz"
      sha256 "bdffe1b6c2b1a3a7048c3d0c460badf4d3f8f5f23f30ebe6f6896a4d890bcfca"
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
