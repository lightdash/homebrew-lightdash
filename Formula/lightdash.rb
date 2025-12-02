class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2216.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2216.0/lightdash-cli-0.2216.0-macos-arm64.tar.gz"
      sha256 "b09d97e585cc213b8d156f0e68f10ca679818eabf87dc10be87d765f09e3443c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2216.0/lightdash-cli-0.2216.0-macos-x64.tar.gz"
      sha256 "8672b60d46559231ba39030beda9813ae5dc0a980ec6e89e54442a5b4ad8691f"
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
