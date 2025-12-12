class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2249.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2249.0/lightdash-cli-0.2249.0-macos-arm64.tar.gz"
      sha256 "c7daae5885d08fef6dff6f8aa166ef1948183be802a3569132e9623580b1b252"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2249.0/lightdash-cli-0.2249.0-macos-x64.tar.gz"
      sha256 "875526c37a4781316980dc1ca7ee35a2314d177b899c33fb4a1c92f32c1d8530"
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
