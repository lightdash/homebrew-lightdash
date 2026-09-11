class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.195.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.195.0/lightdash-cli-2.195.0-macos-arm64.tar.gz"
      sha256 "d9ed5a6d6b1f3cc3abea410aeade20d4ac29b86b4466a1df3f58099d42fb1e6f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.195.0/lightdash-cli-2.195.0-macos-x64.tar.gz"
      sha256 "5606d8be280f931e69a28eb03c90dad9d99431166a65a271c0caea2115f4c215"
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
