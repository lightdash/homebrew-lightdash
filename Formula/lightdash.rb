class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.157.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.157.0/lightdash-cli-2.157.0-macos-arm64.tar.gz"
      sha256 "7a469a1911e338c37ae3af1e117dc9e2dbcce613047a30f5e94641ffb0391abc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.157.0/lightdash-cli-2.157.0-macos-x64.tar.gz"
      sha256 "59b56a6ee6e64b9143b93029056cc5e107042d4a9c50dc45f78fb50048dd27a2"
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
