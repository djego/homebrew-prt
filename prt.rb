class Prt < Formula
  desc "PRT - Herramienta CLI para manejar pull requests en GitHub"
  homepage "https://github.com/djego/prt"
  url "https://github.com/djego/prt/releases/download/v0.3/prt-v0.3.tar.gz"
  sha256 "2b0c634b395bcdb082495b4ad39b170c0033724f5c53676e635b58b8246e1ad1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/prt", "--version"
  end
end
