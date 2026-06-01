class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3062.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3062.0/lightdash-cli-0.3062.0-macos-arm64.tar.gz"
      sha256 "86158e6f5da74ac60c12c54f12d50e133d6e71d1cc3e79ba589df71e294dc2e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3062.0/lightdash-cli-0.3062.0-macos-x64.tar.gz"
      sha256 "50245a859fb6ee627412c5f27fe1eb582afb282e44f782c69fb9e1832b409f59"
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
