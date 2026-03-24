class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2659.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2659.0/lightdash-cli-0.2659.0-macos-arm64.tar.gz"
      sha256 "e67ed4e7ef0244caff8b3fac5f5410a172dd243a884f7e340e532a9ab8c12bdb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2659.0/lightdash-cli-0.2659.0-macos-x64.tar.gz"
      sha256 "e49f49505049a144132667c40eb7c93e21005aea03e83000870029ef2b982e66"
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
