class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.148.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.148.1/lightdash-cli-2.148.1-macos-arm64.tar.gz"
      sha256 "a2199d54ac5b77256ce4dce2b6dfd5b63ec44decf461ac3f827ad0052e4a59f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.148.1/lightdash-cli-2.148.1-macos-x64.tar.gz"
      sha256 "83956ac669d67e063cf7a9377ba4211984a0126701efa91eea21ad9c63dd392e"
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
