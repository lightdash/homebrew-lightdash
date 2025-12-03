class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2221.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.2/lightdash-cli-0.2221.2-macos-arm64.tar.gz"
      sha256 "4b114fcdaf303f86d84d825d0f3f0acc382444bf90723d65438697b992444a6f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.2/lightdash-cli-0.2221.2-macos-x64.tar.gz"
      sha256 "9dd76e0b27df3f738e4103746034e5ab80645f35ee457d046e213a0e63aba4ae"
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
