class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2817.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2817.0/lightdash-cli-0.2817.0-macos-arm64.tar.gz"
      sha256 "27a84fa627218f4a0435d6b0e502c82e12071e70172d367c92ddad24b9fcfc24"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2817.0/lightdash-cli-0.2817.0-macos-x64.tar.gz"
      sha256 "44cf8ab1433418cadfb0b7b7c08c957b4abd51deca6420b71bbf8936e1d21a54"
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
