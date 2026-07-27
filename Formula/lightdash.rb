class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3482.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3482.1/lightdash-cli-0.3482.1-macos-arm64.tar.gz"
      sha256 "ddfdf713716420ebb862c086983d4a6d92f0809ab6b816570c9cb6acd3b4de74"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3482.1/lightdash-cli-0.3482.1-macos-x64.tar.gz"
      sha256 "02e94eb324086bcf6e15c9bc853ed414b58df5d9cb61c3c230314a18127a0654"
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
