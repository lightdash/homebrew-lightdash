class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.24.0/lightdash-cli-3.24.0-macos-arm64.tar.gz"
      sha256 "32e430c4352250b9e53dbbc6114c683856d8a1ec810ba90154750c53a38eff35"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.24.0/lightdash-cli-3.24.0-macos-x64.tar.gz"
      sha256 "5c13cb146e9c08ea59e9831ced9fe968547e061641cc39d4d38616f1e0553c2a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.24.0/lightdash-cli-3.24.0-linux-x64.tar.gz"
    sha256 "c396081937f9777d06dd1b0928ac3190c76623398aba98bfd20e5ecad6e91078"

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
