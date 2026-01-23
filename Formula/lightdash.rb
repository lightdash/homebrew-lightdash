class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2372.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2372.3/lightdash-cli-0.2372.3-macos-arm64.tar.gz"
      sha256 "7f7b4b278305aeda780a93df2f25cf4f21f7d3d7f62ad8edb92187133547b053"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2372.3/lightdash-cli-0.2372.3-macos-x64.tar.gz"
      sha256 "b4fc8849417ccb41f2358f0b5c914ed219ef30480eff8deabf89e0fbeb2b4276"
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
