class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2540.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2540.0/lightdash-cli-0.2540.0-macos-arm64.tar.gz"
      sha256 "0af92a2f1eece0812a6bd5a30e3bcecaa8ecd00dcb3e6d095a519534a91db394"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2540.0/lightdash-cli-0.2540.0-macos-x64.tar.gz"
      sha256 "aca37a34786612885635a181d6775c298ad4db8273699e337e80e461ef19b5fd"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
