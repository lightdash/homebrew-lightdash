class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2491.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2491.0/lightdash-cli-0.2491.0-macos-arm64.tar.gz"
      sha256 "37143574fc409d9ebeb686e31f2995c6c58714c7f0d9a76e7f64a82574b503c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2491.0/lightdash-cli-0.2491.0-macos-x64.tar.gz"
      sha256 "f120156ae29abe4deb9884c494b481380622e8cd3c77eb9051b4cd251de79540"
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
