class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2294.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2294.0/lightdash-cli-0.2294.0-macos-arm64.tar.gz"
      sha256 "38bec2a78aae7fc455aafa76ff16fd285945e305b665c3960a6e3e782c71228b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2294.0/lightdash-cli-0.2294.0-macos-x64.tar.gz"
      sha256 "2c07c725fb5c0c0bf95132243a22af35adbe269ca7b3d4bfa47e69cdcb9b15da"
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
