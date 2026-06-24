class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3237.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3237.4/lightdash-cli-0.3237.4-macos-arm64.tar.gz"
      sha256 "813a7c1a949cb0310559ca288c3d356760d1f3655e740d8554848ff0470d600f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3237.4/lightdash-cli-0.3237.4-macos-x64.tar.gz"
      sha256 "63ccab79ab3002dabea00e985ce2efbc831df5ba4e44113e21b7704006c3bf1c"
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
