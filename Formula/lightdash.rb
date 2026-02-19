class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2489.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2489.0/lightdash-cli-0.2489.0-macos-arm64.tar.gz"
      sha256 "878b91e2b8105fadfb801fcac8fe41f6484344e2ccdca67a394570149dd1b48c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2489.0/lightdash-cli-0.2489.0-macos-x64.tar.gz"
      sha256 "7b25156ab6badbd490d7b5351f23dd43558ff3515c2ca546836cea216062ecdb"
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
