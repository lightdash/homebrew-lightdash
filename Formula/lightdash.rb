class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.607.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.607.0/lightdash-cli-2.607.0-macos-arm64.tar.gz"
      sha256 "a9c805334c814634450b98fbc069e438671812643c6771af1ec330d5858450f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.607.0/lightdash-cli-2.607.0-macos-x64.tar.gz"
      sha256 "a0f1f4b18a7be48edf2edb721c57e12625365a50e3192fbe6b7717823bc44854"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.607.0/lightdash-cli-2.607.0-linux-x64.tar.gz"
    sha256 "9e1f176c3dc084984981482684cff5e586dd7c3db8c396b6972880c74d4eae77"

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
