class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3143.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3143.1/lightdash-cli-0.3143.1-macos-arm64.tar.gz"
      sha256 "5e9cd3d9bfed8e248ac25d36c757e73dfa0c7306c16e30be8ba610e5fae97a7f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3143.1/lightdash-cli-0.3143.1-macos-x64.tar.gz"
      sha256 "0fbc708f1d223497aa05b39f3b44860df1032aa1daa21de05778f2ed25262fd5"
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
