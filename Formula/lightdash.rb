class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2788.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2788.0/lightdash-cli-0.2788.0-macos-arm64.tar.gz"
      sha256 "8dcc2df80106fde50853c122798e2fcdc28c6a4ae8b3ad30f2943445b54c7ee6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2788.0/lightdash-cli-0.2788.0-macos-x64.tar.gz"
      sha256 "bf6cf1642a940e5ea646061afe22d9bd28e2b28e7f02684339207e3dc3733268"
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
