class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2561.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2561.0/lightdash-cli-0.2561.0-macos-arm64.tar.gz"
      sha256 "423e1161d65eeecb3515161116f4ec1d6b5f38605b789d6a11479666d00cce14"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2561.0/lightdash-cli-0.2561.0-macos-x64.tar.gz"
      sha256 "46cdf17d1ae86655353ae0919e691b55171415cb87d6075ef4c5b6261d27c987"
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
