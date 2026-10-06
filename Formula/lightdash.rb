class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.439.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.439.1/lightdash-cli-2.439.1-macos-arm64.tar.gz"
      sha256 "21949bdd8c306220f01d96d66bb8744993853129da9b0e46da7c726367754736"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.439.1/lightdash-cli-2.439.1-macos-x64.tar.gz"
      sha256 "3195bbf071d88e8855b82ff0417d17c1175a4b212f6c66e0073cfe8ee6b3d4ea"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.439.1/lightdash-cli-2.439.1-linux-x64.tar.gz"
    sha256 "311f7f770e5cb1d977f851c76c16a535035b3f64a8f049e92abd9896a475f72a"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
