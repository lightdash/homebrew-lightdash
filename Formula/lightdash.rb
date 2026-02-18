class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2483.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2483.3/lightdash-cli-0.2483.3-macos-arm64.tar.gz"
      sha256 "a85d424252eccd9e5a2ee1295c561f39c6e294c87aac5388fa2aa45a7535e5a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2483.3/lightdash-cli-0.2483.3-macos-x64.tar.gz"
      sha256 "ad35bd26245a572bc76d3bc1cf9ed72ed2cecc0372afdef9667725934059ab24"
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
