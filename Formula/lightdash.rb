class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2821.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2821.0/lightdash-cli-0.2821.0-macos-arm64.tar.gz"
      sha256 "3e2b7f6f580ea2bbeb4e6fe1bb92844fa7f73292ecb413d27ee27a061c5a42b8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2821.0/lightdash-cli-0.2821.0-macos-x64.tar.gz"
      sha256 "faa10c74e62f596c10858ce81def84d041362805459b3b13236fa625d1a11552"
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
